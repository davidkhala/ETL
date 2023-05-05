# PySpark

## User Defined Function (UDF)
- the most useful feature of Spark SQL & DataFrame 
- used to extend the PySpark build-in capabilities.
- the most expensive operations: use them only you have no choice and when essential

Create
1. create a function in a Python syntax
2. wrap it with PySpark SQL `udf()` or register it as udf
