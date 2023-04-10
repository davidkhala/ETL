https://docs.getdbt.com/docs/build/seeds

## Use case
When
- Dimension table: A list of mappings of country codes to country names
- A list of test emails to exclude from analysis
- A list of employee account IDs

When not
- Loading raw data that has been exported to CSVs
- Any kind of production data containing sensitive information. For example personal identifiable information (PII) and passwords.


## seed schema change 
When you typically run `dbt seed`, dbt truncates the existing table and reinserts the data. This pattern avoids a `drop cascade` command. `drop cascade` may cause downstream objects (that your BI users might be querying!) to get dropped.

However, when column names are changed, or new columns are added, these statements will fail as the table structure has changed.

`dbt seed --full-refresh` will force dbt to `drop cascade` the existing table before rebuilding it.
