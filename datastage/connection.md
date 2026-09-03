# Connection
DB connection没办法set client cert

## Oracle
- import Oracle schema的时候，Number 类型会被识别成Varchar
  - Solution: 在Connection设置的栏目Additional Properties里面，设置Number Type为Double
