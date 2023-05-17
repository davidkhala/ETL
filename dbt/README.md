# Design
https://discourse.getdbt.com/t/could-dbt-be-used-to-migrate-data-between-operational-databases/296/3
- In short, dbt is not an ETL tool, it is not designed to move data between sources and targets, rather it expects your data to already be in your warehouse.
- Clearly DBT is not a data replication tool and is meant to operate only within one database platform.
- In the end, could we think of DBT as a functional way of processing data, of model as a function F(M, M’, M’’…) -> M’’’ generating one new model from proceeding ones on the DAG ?

## Don't write DML
[Why can't I just write DML in my transformations?](https://docs.getdbt.com/faqs/project/why-not-write-dml)
- What happens if the [table](https://docs.getdbt.com/terms/table) already exists? Or this table already exists as a [view](https://docs.getdbt.com/terms/view), but now I want it to be a table?
- What if the schema already exists? Or, should I check if the schema already exists?
- How do I replace a model atomically (such that there's no down-time for someone querying the table)
- What if I want to parameterise my schema so I can run these transformations in a development environment?
- What order do I need to run these statements in? If I run a cascade does it break other things?
