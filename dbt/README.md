


# Macros and templating
In dbt, you can combine SQL with Jinja, a templating language, into programming environment for SQL (Jinja + SQL = PL/SQL)
- To support control structure, environment variables, abstract snippets of SQL into reusable macros

# `With` Common Table Expression (CTE)
- A temporary result set available for use until the end of SQL script execution. (SQL composite)
- You can think of a CTE as a separate, smaller query within the larger query you’re building up.
  - like making a temporary [view](https://docs.getdbt.com/terms/view) that you can access throughout the rest of the query you are writing.
- Use CTEs by the `with` keyword
