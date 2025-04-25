## XQL Functions
Functions provide a level of abstraction for the callers.

```sql
<return_value> = func_name([arg1, arg2])
```

>[!TIP]
>Return types = string, number, array of strings, array of numbers.

Examples:
1. extract_time() and current_time()
2. current_timestamp(), format_timestamp(), extract_timestamp(), to_timestamp(), if(), regextract()
3. round() and divide()
4. len()
5. to_integer(), to_boolan(), to_json_string(), to_timestamp(), to_float(), to_number(), to_string()
6. object_create(), json_extract_array(), to_json_string(), json_extract(), json_extract_scalar()
7. array_all()
8. array_any()
9. array_create()
10. array_concat()
11. array_length()
12. array_index()
13. array_map()
14. string_count()
15. split()
16. format_string()
17. windowcomp() functions calculation statistics. rank, first_value, stddev_sample, avg and median.
