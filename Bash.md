# Bash

### Delete all json files in dir when argument list is too long for rm -rf *.json
```shell
for f in *.json; do sudo rm -rf "$f"; done
```

### Make 100 copies of a file with number added to the name
```shell
for f in {1..100}; do cp some-file.json some-file-$f.json; done
```

### Read from file and print each line
```shell
while read hostname; do
  echo "host: $hostname"
done < hosts.txt
```
### Loop through all files matching a filename pattern (access_log*) in the current directory and execute a command against each
```shell
for file in access_log* ; do cat $file | grep GET ; done
```

### for loop [@] vs [*] vs without
```shell
my_array=(foo bar)
for i in "${my_array[@]}"; do echo "$i"; done # treat each element as a seperate string
# foo
# bar
for i in "${my_array[*]}"; do echo "$i"; done # gather all elements into a single string
# foo bar
for i in "${my_array}"; do echo "$i"; done # only use first element
# foo
```
