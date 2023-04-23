# Materialization
dbt models are materialized as one of 
- View (default)
- Table
- [`Incremental`](https://docs.getdbt.com/docs/build/incremental-models): Best for event-style data
  - dbt insert or update records into a table since the last time that dbt was run.
  - **Pros**: You can significantly reduce the build time by just transforming new records. 
  - **Pros**: when using `table` materialization to have better performance in downstream queries
  - **Cons**: incremental models are a trade-off between complexity and performance. It is not as straightforward as others
- Ephemeral (virtual intermediate)
  - ephemeral models are not directly built into the database. 
  - Instead, dbt will interpolate the code from this model into dependent models as a common table expression(CTE).

## Incremental
- a variant of `table` materialization

Column selection
- dbt will update only the columns specified in the config `merge_update_columns`, and keep the previous values of other columns.
- Alternatively, you can specify a list of columns to exclude from being updated by passing a list of column names to a `merge_exclude_columns` config
  ```
  {{
    config(
      materialized = 'incremental',
      unique_key = 'id',
      merge_update_columns = ['email', 'ip_address'],
      merge_exclude_columns = ['created_at'],
      ...

    )
  }}

  select ...
  ```
`unique_key`
- A `unique_key` enables updating existing rows instead of just appending new rows.
- The model run will fail if duplicated unique keys are found either in existing target table or the new incremental rows.

## Rebuild model
when
- If your incremental model logic has changed. 

By 
```
dbt run --full-refresh --select my_incremental_model+
```
- the trailing `+` means also to rebuild any downstream models

# DBT Source
[yaml syntax](https://docs.getdbt.com/reference/source-properties)
