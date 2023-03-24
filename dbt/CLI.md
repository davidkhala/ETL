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
