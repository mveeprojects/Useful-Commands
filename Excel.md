# Excel

### Count number of rows in a column
```
=COUNTA(A:A)
```

### Count number of rows that contain a given value
```
=COUNTIF(A:A, "a given value")
```

### Count based on multiple predicates
```
# Count values in column E that are not equal to "something" AND have values in column H equal to "a given value".
=COUNTIFS(E:E, "<>something",H:H, "a given value")
```
