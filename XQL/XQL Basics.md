## Fundamentals of XQL
----
###### Elements includes
1. Stages = perform certain operations in evaluation queries. dataset, fields, filters, join, sort
2. Functions = Can call function to change the data to needed format. Only `filter` and `alert` stage can use it.
3. Operators = as similar to language programming.
----
###### XQL syntax and XQL schema
1. Syntax = language elements
2. Schema = information about the particular dataset
----

###### Typical Query
```sql

/* Each stage syntax will be different */

dataset = xdr_data -> stage 1
| filter actor_process_image_name = "powershell.exe" -> stage 2
| fields event_type, event_sub_type as SUBTYPE -> stage 3
| dedup event_type, SUBTYPE by asc _time -> stage 4
| limit 4 -> stage 5
```

----
###### Datasets

The XQL queries are run against this, which act as a data source. 
- Explicit declare using `dataset`
- Implicit takes the `xdr_data` as default. You can change the `default` data set as well.

`Note`: config case_sensitive = false make the string comparison case insensitive.

