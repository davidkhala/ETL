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
  select * from ...
  {% endsnapshot %}
  ```
- Run `dbt snapshot`
- A new table will be created,  named as `${target_schema}.${target_database}.${your_snapshot_name}`
## Use
`SELECT * FROM {{ ref('${your_snapshot_name}') }}`

# Best practise
- use downstream models to clean up the data enrichment (reduce snapshot)
- Use the `source` function in your query.??
  - This helps to understand data lineage
- Include as many columns as possible, such as `select *`
- Avoid joins in your snapshot query
  - Better to snapshot the two tables separately, and join them in downstream models.
- Ensure your unique key is really unique
  - Because the unique key is used by dbt to match rows up.
  - If you're snapshotting a `source`, I'd recommend adding a uniqueness test to your `source`
- Use anohter schema that is separate to your analytics schema
  - Because Snapshots cannot be rebuilt.
  - put snapshots in a separate schema so end users know they are special.
  - make it very difficult to drop a snapshot unless you really want to.
