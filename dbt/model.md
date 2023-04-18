# Materialization
dbt models are materialized as one of 
- View (default)
- Table
- `Incremental`: Best for event-style data
  - dbt insert or update records into a table since the last time that dbt was run.
  - **Pros**: You can significantly reduce the build time by just transforming new records. 
- Ephemeral (virtual intermediate)
  - ephemeral models are not directly built into the database. 
  - Instead, dbt will interpolate the code from this model into dependent models as a common table expression(CTE).

# DBT Source
[yaml syntax](https://docs.getdbt.com/reference/source-properties)
