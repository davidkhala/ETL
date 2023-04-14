# DBT core



# Install 
## brew install
- Homebrew formulae maintained for the 4 adapter plugins: Postgres, Redshift, Snowflake, and BigQuery.

Add registry by 
```
brew tap dbt-labs/dbt
```
You must choose at least one adatper to install, `$dbt` command cannot be installed as standalone
```
brew install dbt-postgres|dbt-bigquery|...
```


## pip install
```
pip install dbt-core dbt-postgres dbt-redshift dbt-snowflake dbt-bigquery dbt-trino
```

## optional [dbt-completion](https://github.com/dbt-labs/dbt-completion.bash)
auto-complete for CLI
