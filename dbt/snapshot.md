# DBT Snapshot
# Usage
Strategy
- if there is a timestamp column in source schema can indicate record change, such as `updated_at`, use `strategy='timestamp'`
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
