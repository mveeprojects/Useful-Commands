# Vault

### List directories in vault
```shell
vault list <path_to_dir>
```

### Read a particular leaf directories' secrets
```shell
vault read <path_to_secret>
```

### Write multiple keys to vault in one line
```shell
vault write <path_to_secret> "key1": "value1" "key2": "value2"
```

### Write the contents of a JSON file to vault
```shell
cat vaultsecrets.json | vault write <path_to_secret> -
Example JSON to write to vault (vaultsecrets.json):
{
  "key1": "value1",
  "key2": "value2"
}
```

or

```shell
Write directly from a file (@ notation to reference file)
vault write <path_to_secret> @vaultsecrets.json
```
### Read secret and decode from base64 at the same time
vault read -field=<field_name_inside_secret> <path_to_secret> | base64 -D
