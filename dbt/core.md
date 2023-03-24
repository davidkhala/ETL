# DBT core

# Supported data platforms
[Verified adapters](https://docs.getdbt.com/docs/supported-data-platforms#verified-adapters)
- Postgres
- Redshift
- Snowflake
- BigQuery
- Databricks (beta)
- Dremio (beta)
- Spark
- Starburst & Trino (beta)

[Community adapters](https://docs.getdbt.com/docs/supported-data-platforms#community-adapters)
- Athena
- Greenplum
- Oracle
- Clickhouse
- Hive
- Rockset
- IBM DB2
- Impala
- SingleStore
- SQLite
- SQL Server & Azure SQL
- Teradata
- TiDB
- Firebolt
- AWS Glue
- MySQL	

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
