# Unix

### Generate ssh keys
```shell
ssh-keygen -t rsa
```

### Find processes running on a particular ports
```shell
netstat -vanp tcp | grep 8080
sudo netstat -tlnp | grep 8080
sudo netstat -lptu (see all listening ports)
```

### Find process running on a particular port and show pid
```shell
lsof -i tcp:<port>
```

### Kill a process by pid
```shell
kill -9 <pid>
```

### Show the amount of disk space used and available
```shell
df
```

### Display the amount of disk space used by the specified files and for each subdirectory
```shell
du
```

### Find large directories and order
```shell
du -hs */ .*/ | sort -n
```

### Simpler way of finding large directories and ordering
```shell
du -hsc * | sort -h
```

### Add alias for command (redHat .bashrc else .bash_profile)
```shell
sudo nano/vi/vim .bashrc/.bash_profile
alias x='somecommand'
```

### Copy from remote to local
```shell
scp username@192.168.1.111:/path/to/myfile.txt /Users/Jamie/local/path/to/myfile.txt
```

### Find file/dir in root dir
```shell
# simple
find / -name somefilename
# directories only
find / -type d -name 'some_filename'
# prevent printing errors
find / type d -name 'some_filename' 2> /dev/null
```

### Find files containing a given string
```shell
grep -rn '/path/to/somewhere/' -e "pattern"
```

### Get a count of files in a given directory
```shell
find ./directory-name -type f | wc -l
```

### Get count of lines in a given file
```shell
wc -l filename
```

### View memory usage (simple view)
```shell
free -m
```

### View detailed memory usage as well as CPU stats etc
```shell
top
```

### Delete all files in dir (workaround for rm -rf * "argument list is too long")
```shell
find . -type f -delete
```

### Find and delete empty files from current dir down
```shell
find . -type f -empty -delete -print
```

### Zipping when argument list is too long (omit -xvf etc)
```shell
zip -r my.zip .
```

### Zip a directory with password (-e => prompted after running command to add password)
```shell
zip -e myzipperoo.zip temp/*
```

### Unpacking tar.gz (2 step)
```shell
gzip -d filename.tar.gz
tar -xvf filename.tar
```

### Unpacking tar.gz (1 step)
```shell
tar -xzf filename.tar.gz
```

### Install ifconfig if missing
```shell
sudo [yum|apt-get] install -y net-tools
```

### Install telnet (non-Alpine/apk)
```shell
sudo [yum|apt-get] install -y telnet|telnet-server
```

### Install telnet (Alpine)
```shell
apk update
apk add busybox-extras
```

### Use nc (netcat) to quickly check connectivity with an external host
```shell
nc -v -z hostname port
```

### Switch to root user and stay in same directory
```shell
sudo -s
```

### Run this before running a bash script to show all executed steps (good for debugging bash scripts)
```shell
set -x
```

### Open a port that displays a simple message (accessible via "curl -v localhost:4001")
```shell
echo "Hello, World"  | nc -l 4001
```

### View all users 
```shell
cat /etc/passwd
```

### View last 1000 lines of a file
```shell
tail -n 1000 <filename>
```

### Get tar.gz of Java8_171 from command line (wget)
```shell
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie;" "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz"
```

### Revert to default shell
```shell
chsh -s bash
```

### Check OS (use either of the below)
```shell
cat /etc/os-release
lsb_release -a
hostnamectl
```

### echo output of command to file
```shell
echo `ls -l ../` >> out.txt
```

### Filename to variable
```shell
filename=`basename "$0"`
```

### Watch a process e.g. docker ps, refresh every second
```shell
watch -n1 'docker ps'
```

### Find all unique lines in a file
```shell
sort -u test.txt
```

### Find all lines with unique first column (-k1) with comma delimiter (-t,) - useful for sorting through csv files
```shell
sort -u -t, -k1,1 test.csv
```

### vi/vim show line numbers
```shell
:set number
```

### Find out when all files in a directory were last modified (in reverse order)
```shell
find directoryname/ -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort -r
```

### Trim all quotes from input
```shell
<input> | tr -d '"'
```

### Find lines in file that do not contain a given string (grep -v) and send to another file
```shell
cat <input_file_name> | grep -v <string_to_ignore> > <output_file_name>
```

### Add date and time to history command
```shell
export HISTTIMEFORMAT="%d/%m/%y %T "
```

### Remove line from history
```shell
history -d line_number
```

### Remove entire history
```shell
history -c
```

### Gzip and keep local file
```shell
gzip -k filename
```

### Result of previous command
```shell
$?
```

### Set current directory to a varable
```shell
readonly dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
```

### Bring in functions from another .sh file in a location relative to the script you're running
```shell
source ${dir}/otherfunctions.sh
```

### base64 encode latest item on clipboard
```shell
pbpaste | base64
```

### base64 decode latest item on clipboard
```shell
pbpaste | base64 -d
```

### netcat (nc) check port on host
```shell
# -z (scan for port, without sending any data)
# -v (verbose)
nc -zv google.com 80
```

### telnet check port on host
```shell
telnet google.com 80
```

### Save output of command to a file
```shell
# Set the command to an environemnt variable (this helps preserve whitespaces and newlines etc.)
TEMP=`kubectl -n my_namespace get events --sort-by=.metadata.creationTimestamp | grep fail`
# Now echo this env var to a file making sure to wrap it in double quotes
echo "$TEMP" >> output.txt
```

### Show all installed versions of Java (Mac)
```shell
/usr/libexec/java_home -V
or
mdfind -name 'java' | grep '/bin/java$'
```

### Find a given string in sh files
```shell
find . -name '*.sh' -exec grep "some string you want to find" {} \;
```
