# Data Quality/Validation
We need to confirm whether our data was moved successfully. 

Finding a tool to compare and make simple validations between environments is challenging.

a framework for comparing datasets between environments

1. Tests should be easily configurable using a file structure like YAML, JSON
2. Tests should be grouped together so they can be run at certain times and sequence. 
   - For example, after moving table1, table2 and table3, we’d want to run a test proving that tables 1, 2 and 3 in the old and new environments matched.
3. We should have the ability to cache the test results for a dashboard but force a refresh when necessary.
4. Any data transformation rules/pipelines should be reflected in/tested by the QA process.
5. We should be able to run simple counts tests(checksum on row changed) as well as some ad-hoc queries. 
