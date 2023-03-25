# What's old 
The historical codebase of transformations are often written as a hodgepodge of DDL and DML statements, or stored procedures.
- procedural flow of building a dataset
# What's new
Declarative approach to defining a dataset 

A series of DDL and DML statements --> uses `SELECT` statements to express data models

# Drawback and don't touch

## Run standard SQL directly
- `dbt run` for compiled SQL in `/target`
- invoke macros `run_query` with `dbt run-operation`
- Use [hooks](https://docs.getdbt.com/docs/build/hooks-operations#about-hooks) inside model file 

