https://github.com/davidkhala/ETL/wiki/DBT#dbt-seed

## if DBT Seed schema change 
When you typically run `dbt seed`, dbt truncates the existing table and reinserts the data. This pattern avoids a `drop cascade` command. `drop cascade` may cause downstream objects (that your BI users might be querying!) to get dropped.

However, when column names are changed, or new columns are added, these statements will fail as the table structure has changed.

`dbt seed --full-refresh` will force dbt to `drop cascade` the existing table before rebuilding it.
