# Unix Functions

Useful functions to add to bash_profile/bashrc/zshrc/etc.

### Check what's running on a given port
```shell
# Usage: checkPort port_number
checkPort() {
  lsof -i tcp:$1
}
```

### Stop a process by pid
```shell
# Usage: killprocess some_pid
killprocess() {
  kill -9 $1
}
```
