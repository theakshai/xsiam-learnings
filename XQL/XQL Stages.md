## XQL Stages

Stages are basic building blocks in the XQL query. They are separated by pipe (|).

----

`Declaration stage` : dataset
`Performing stage`: filter, alter, join, sort, fields etc.,

###### Dataset Stage:

It is a declaration type of stage. xdr_data datset Available for every customer irrespective of license.

You can change the default dataset in `configurations` -> `data management` -> `right click on the data set to set as default`
```sql
dataset = xdr_data
dataset in (dataset_1, dataset_2)

```

----
###### Config Stage:

It cannot run just with this stage. Used for 2 main things,
1. Compile time case-sensitive = ( True/ False ) for case in/sensitive comparison.
2. Timeframe = Sets the timeframe to query the results only in that timeframe.

>[!NOTE]
>Always keep as a first stage



```sql
config case_sensitive = true | false
config timeframe = 24h
config timeframe between "2021-01-01 00:00:00" and "2021-02-01 00:00:00"
```

----

###### Presets Stage:

Presets offer groupings of `xdr_data` fields that are useful for analyzing specific areas of network and endpoint activity ( Regular type) . All of the fields available for a preset are also available on the larger `xdr_data`dataset, but by using the preset your query can run more efficiently. Presets are sorted at random by the first one million results found.

1. authentication_story
2. network_story

----

###### Target Stage:

Saves the result set in the target dataset. Can be created newly or can added into the existing one.

>[!NOTE]
> It should be the last in the query. Also it is the only thing that can manipulate the backend data.

```sql
target type=dataset/lookup append=true/false < dataset_name >

dataset = DL3
| alter CNT = to_integer(CNT)
| target type=datset DL4

```

----

###### Fields Stage:

List of fields from the available fields in the dataset to show in the result page.

----

Filter Stage:

Filter the logs and displays in the result page. Multiple filter stage can be used.

```sql
filter field_name = ""
filter field_name in ("","")
```

----
###### Filter VS Fields:

1. Filter specifies the row.
2. Fields specifies the column.

----

###### Alter Stage:

Can alter the existing field or create new if it doesn't exist.

>[!NOTE]
>All the field altered and new field created are temporary in memory changes.


```sql

alter <variable_name> = <value>

```


----

###### Comp Stage:

Performs aggregation functions in the result set. Do avg, count, earliest, max, min and sum.

```sql

comp <function> [ as <alias> ] by <field1>[,<field2>,]
```


----

###### Other XQL stages:

1. Call = Call the save query.
2. Limit = Limit the number of displayed results
3. Sort = Sort asc/desc based on the fields
4. Dedup = Remove the duplicate values
5. Time Bucketing = Group records into the time buckets.

----

###### Order of the Stage:

Order of stage piping is very important.

Incorrect order: `dataset` -> `alter` -> `fields` -> `filter`
Correct order: `dataset` -> `alter` -> `filter` -> `fields`