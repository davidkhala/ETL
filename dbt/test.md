# [DBT test](https://docs.getdbt.com/docs/build/tests)
Tests are assertions you make about your dbt resources in your dbt project
- [Use test in yaml config](https://docs.getdbt.com/reference/resource-properties/tests)
  - syntax supported in `model`, `source`, `seed` and `snapshot` resource
- Behind the scenes, you or dbt constructs a `select` query for each test. These queries return the rows where your assertion is not true; if the test returns zero rows, your assertion passes.
# generic tests
Using the parametrized query from the generic test block.
## built-in generic tests
Also known as Out-of-the-box tests. 

There are only 4 types of built-in generic test
- `not_null`
- `unique`
- `accepted_values`
- `relationships`: ensure referential integrity
  - This test validates that all of the records in a child table have a corresponding record in a parent table.

# Advanced test
- [audit_helper (official)](https://hub.getdbt.com/dbt-labs/audit_helper/latest/)
  - row-by-row validation of two relations
  - logical validation of two select statements
- [dbt_expectations (recommended)](https://hub.getdbt.com/calogica/dbt_expectations/latest/)
- [dbt_utils (official)](https://hub.getdbt.com/dbt-labs/dbt_utils/latest/)
