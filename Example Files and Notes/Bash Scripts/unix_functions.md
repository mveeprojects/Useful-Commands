# Unix Functions

Useful functions to add to bash_profile/bashrc/zshrc/etc.

### Get PID of process running on a given port
```shell
# Usage: checkport port_number
checkport() {
  readonly lsofcmd=`lsof -i tcp:$1`
  if [ ! -z "$lsofcmd" ] ; then
     readonly pidfromlsof=$(echo "$lsofcmd" | awk '{print $2}')
     echo $pidfromlsof
  else
    echo "nothing running on port $1"
  fi
}
```

### Stop a process by PID
```shell
# Usage: killprocess some_pid
killprocess() {
  kill -9 $1
}
```
