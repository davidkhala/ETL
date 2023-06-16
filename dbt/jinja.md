
# Templating
In dbt, you can combine SQL with Jinja, a templating language, into programming environment for SQL (Jinja + SQL = PL/SQL)
- To support control structure, environment variables, abstract snippets of SQL into reusable macros

## Escaping
Use this trick, if you want to use `{{` as a raw string in a template

`{{ '{{' }}`
Or
```
{% raw %}
    {{
{% endraw %}
```
Or 
Use {% raw -%} tag than {% raw %} to clean all the spaces and newlines preceding the first character of your raw data.

