https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/1-migrating-from-stored-procedures
# What's old 
The historical codebase of transformations are often written as a hodgepodge of DDL and DML statements, or stored procedures.
- procedural flow of building a dataset
# What's new
Declarative approach to defining a dataset 

A series of DDL and DML statements --> uses `SELECT` statements to express data models
## DML statements migrate to DBT
- [SQL insert](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/2-inserts)
  - design limit: only Insert-Into-Select. No Insert-Into-Values
- [SQL update](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/3-updates)
- [SQL delete](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/4-deletes)
- [SQL MERGE](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/5-merges)
## DDL migrate to DBT
Know original schema definition, aka DDL
- Solution 1: discover original schema by "SHOW CREATE TABLE"
- Solution 2: pull column lists out of any DML statements that modify the table, and build up a full set of the columns that appear.

Explicitly specify the right column type
- Tables can end up with unintended column types, since models materialized by dbt generally use **CREATE TABLE AS SELECT** or **CREATE VIEW AS SELECT** as the driver for object creation
- `cast` the column to the type you intend, if you care about `INT` versus `DECIMAL` versus `NUMERIC`

Generally, recommend that column renaming and type casting happen as close to the source tables as possible

# Drawback and don't touch

## Run standard SQL directly
- `dbt run` for compiled SQL in `/target`
- invoke macros `run_query` with `dbt run-operation`
- Use [hooks](https://docs.getdbt.com/docs/build/hooks-operations#about-hooks) in project or resource level



