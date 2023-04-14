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
pip install dbt-postgres|dbt-bigquery|...
```
