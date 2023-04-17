# [DBT command](https://docs.getdbt.com/reference/dbt-commands)

## [Build](https://docs.getdbt.com/reference/commands/build)
build and test all selected resources, include
- run models
- test tests
- snapshot snapshots
- seed seeds

## [Compile](https://docs.getdbt.com/reference/commands/compile)
compiles (but does not run) the models in a project
- generates executable SQL from source `model`, `test`, and `analysis` files into `target/` directory of your dbt project.
- It is not a pre-requisite of `dbt run`

## [Run](https://docs.getdbt.com/reference/commands/run)
- executes compiled sql model files against the current target database


## [Seed](https://docs.getdbt.com/reference/commands/seed)
loads CSV files (located in directory `/seed-paths`) into the database

## [Source](https://docs.getdbt.com/reference/commands/source)
provides tools for working with source data

## `compile`
Require
- profile exist
- credential (e.g. gcp Application Default Credentials)

# `parse`
Require
- profile exist

## [Partial Parsing](https://docs.getdbt.com/reference/parsing#partial-parsing)
- Starting in v1.0, partial parsing is on by default.

