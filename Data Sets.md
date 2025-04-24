1. collection of columns and values. It will be set based on the rules defined in the data collector or parsing engine
2. Cortex has XDM -> XSIAM Data Model
3. Basically XDM act as gateway where the data will be sent and normalized to a unified data model scheme.
4. You can query the data sets using XQL. By default if the data set not sepcified it will query xdr_data. You can define the data sets as well. Also, You can upload data such as CSV, TSV and JSON. This will be called `lookup data`. Now, xdr_data will contains data sets from all the collected endpoints and network data.

##### Parsing and normalization

The incoming data will always be unstructured and in the format of the string. Now we need to parse/normalize it to have feed the data into the datasets.

2 types of data mapping:
1. Parsing -> Forever, once it is changed it can't be undone.
2. Data Model -> parse on demand, use data model , XQL and parse the data on demand. `Preferred method`

##### Data Model rules.

Basically a model rule defined, 
1. export raw logs -> ingested to XSIAM -> sits in tenant as raw -> Query runs -> get the data from the raw log based on the rules defined in the XDM -> display data 
2. Unmapped data won't be visible. You can use _raw_data filed with * to display all.

##### Parsing rules:
1. Can remove un used data before setting it to the tenant.
2. Vendor and product -> target dataset parameter -> timestamp normalization -> data extraction

##### Data set Management:
How data set views and limiting it views based on RBAC

dataset -> know the different set of data sets and it's retention period
dataset views -> views based on specific query results
