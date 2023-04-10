# Materializations
dbt models are materialized as one of 
- View (default)
- Table
- Incremental
  - dbt insert or update records into a table since the last time that dbt was run.
- Ephemeral (virtual intermediate)
  - ephemeral models are not directly built into the database. 
  - Instead, dbt will interpolate the code from this model into dependent models as a common table expression(CTE).
