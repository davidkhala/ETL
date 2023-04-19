# BQ as migrate target

# Datametica
- from [teradata](https://www.datametica.com/migration-to-gcp/teradata-to-bigquery/)

# GCP BQ Migrate Service


## Before you begin (prepare)
1. [collect_source_files](https://cloud.google.com/bigquery/docs/batch-sql-translator#collect_source_files)
  - Source files can also include comments
3. [create_metadata_files](https://cloud.google.com/bigquery/docs/batch-sql-translator#create_metadata_files)
  1. use `dwh-migration-dumper` command-line tool to [generate the metadata information](https://cloud.google.com/bigquery/docs/generate-metadata)
  2. Once metadata files are prepared, include them along with the source files in the translation source folder
  3. 

