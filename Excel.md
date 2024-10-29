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
# Count if values in column E not equal to "something" AND if values in column H equal "a given value".
=COUNTIFS(E:E, "<>something",H:H, "a given value")
```
