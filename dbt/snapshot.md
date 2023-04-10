# DBT Snapshot
# Usage
Strategy
- if there is a timestamp column in source schema can indicate record change, such as `updated_at`, use `strategy='timestamp'`
  - This strategy handles column additions and deletions better than the `check_cols` strategy.
- if no timestampe column, use `strategy='check'` 

## Create
- Create a .sql file in folder `snapshots`
  ```
  {% snapshot ${your_snapshot_name} %}
  {{
    config(
      target_database='database',
      target_schema='snapshots_schema',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}
  select * from ...
  {% endsnapshot %}
  ```
- Run `dbt snapshot`
  - It is not possible to "preview data" or "compile sql" for snapshots in dbt Cloud.
- A new table will be created,  named as `${target_schema}.${target_database}.${your_snapshot_name}`
## Use
Snapshots can be referenced in downstream models the same way as referencing models — by using the `ref` function.
`SELECT * FROM {{ ref('${your_snapshot_name}') }}`

# Best practise
- use downstream models to clean up the data enrichment (reduce snapshot)
- Your models should then select from these snapshots, treating them like regular data sources. (Snapshot source data)
- Use the `source` function in your query to describe the data loaded already. 
  - https://docs.getdbt.com/docs/build/sources
  - This helps to understand data lineage
- Include as many columns as possible, such as `select *`
- Avoid joins in your snapshot query
  - Joins can make it difficult to build a reliable `updated_at` timestamp
  - Better to snapshot the two tables separately, and join them in downstream models.
- Ensure your unique key is really unique
  - Because the unique key is used by dbt to match rows up.
  - If you're snapshotting a `source`, I'd recommend adding a uniqueness test to your `source`
- Use anohter schema that is separate to your analytics schema
  - Because Snapshots cannot be rebuilt.
  - put snapshots in a separate schema so end users know they are special.
  - make it very difficult to drop a snapshot unless you really want to.
- Limit the amount of transformation in your query.
  - If you apply business logic in a snapshot query, and this logic changes in the future, it can be impossible to apply the change in logic to your snapshots.
