# What's old 
The historical codebase of transformations are often written as a hodgepodge of DDL and DML statements, or stored procedures.
- procedural flow of building a dataset
# What's new
Declarative approach to defining a dataset 

A series of DDL and DML statements --> uses `SELECT` statements to express data models

DML statements migrate to DBT
- [SQL insert](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/2-inserts)
  - design limit: only Insert-Into-Select. No Insert-Into-Values
- [SQL update](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/3-updates)
- [SQL delete](https://docs.getdbt.com/guides/migration/tools/migrating-from-stored-procedures/4-deletes)

# Drawback and don't touch

## Run standard SQL directly
- `dbt run` for compiled SQL in `/target`
- invoke macros `run_query` with `dbt run-operation`
- Use [hooks](https://docs.getdbt.com/docs/build/hooks-operations#about-hooks) in project or resource level



