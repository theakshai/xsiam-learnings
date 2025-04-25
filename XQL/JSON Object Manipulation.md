## Json Fields and Variables
----
###### Source of JSON fields and variables

1. JSON fields in digested datasets
2. JSON type variables created via query

----
##### Methods to access JSON
1. json_extract_scalar(root, <key_to_extract>) [ Case Sensitive  ]
2. json_extract_array()
3. json_extract()
4. object_create()
5. to_json_string()
6. Sugar Format => jsonScalarPath, jsonArrayPath[], jsonObjPath{}

----
###### JSONPath

A set of expressions defining path to JSON objects. Either . or [''] notations.

----

JSON extract 

json_extract_scalar(field, scalar, array, object)

```json
"root":
{
	"A": "10",
	"B":
	{
		"C": "20",
		"D": 
		[
			{"E": 30},
			{"E": 40}
		],
		"F": [50,60,70]
	}
}
```

The query will be,

```sql

/* JSON Scalar extraction */

alter c = json_extract_scalar(root, "$B.C")
alter e = json_extract_scalar(root, "$B.D[1].E")
alter f = json_extract_scalar(root, "$B.F[2]")

/* JSON array extraction */

alter f_arr = json_extract_array(root, "$B.F")
alter f_arr_index_two = arrayindex(f_arr, 2)

/* JSON Object extraction */

alter f = json_extract(root, "$B")
```

----

###### JSON Syntactic Sugar Format

3 formats => scalar, array, object

```sql

alter a1 = root->A
alter a1 = root->B.C
alter a1 = root->B.D[1].E
alter a1 = root->B.F[]
alter a1 = root->B{}

```