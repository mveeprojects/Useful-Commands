# Grafana

### Stacked bar chart by labels (labels as fields)

https://stackoverflow.com/a/74235396/3059314

> sum(rate(http_requests_received_total[1h])) by (code,instance)
> - First make sure the Bar Chart option Stacking is set to Normal.
> - Set the query Type to be Instant since we'll only use the last value.
> - Go on to Transform the query. Remember the Table view option is your friend in grasphing what is going on. Add in this order:
> - Add Reduce transform to reduce Series to rows. I use Max-calculations, but remember we really have just one.
> - Add Extract fields transform to split Field into separate fields.
> - If you want to do anything with the ordering this is the place to add a Sort by transform.
> - Add Grouping to matrix transform to create new columns from the new code field. Use code as Column, instance as Row and Max as Cell Value.


### Filter a Grafana variable using a prometheus datasource

Add the below to the regex section to filter the possible values only if they include `substring` or `another_substring`.
```
 (.*substring.*|.*another_substring.*)
```
