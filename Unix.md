# Unix

### Generate ssh keys
`ssh-keygen -t rsa`

### Find processes running on a particular ports
```shell
netstat -vanp tcp | grep 8080
sudo netstat -tlnp | grep 8080
sudo netstat -lptu (see all listening ports)
```

### Find process running on a particular port and show pid
`lsof -i tcp:<port>`

### Kill a process by pid
`kill -9 <pid>`

### Show the amount of disk space used and available
`df`

### Display the amount of disk space used by the specified files and for each subdirectory
`du`

### Find large directories and order
`du -hs */ .*/ | sort -n`

### Simpler way of finding large directories and ordering
`shell du -hsc * | sort -h`

### Add alias for command (redHat .bashrc else .bash_profile)
```shell
sudo nano/vi/vim .bashrc/.bash_profile
alias x='somecommand'
```

### Copy from remote to local
`scp username@192.168.1.111:/path/to/myfile.txt /Users/Jamie/local/path/to/myfile.txt`

### Find file/dir in root dir
`find / -name somefilename`

### Find directory in root dir
`find / -type d -name 'some_filename'`

### Find files containing a given string
`grep -rn '/path/to/somewhere/' -e "pattern"`

### Get a count of files in a given directory
`find ./directory-name -type f | wc -l`

### Get count of lines in a given file
`wc -l filename`

### View memory usage (simple view)
`free -m`

### View detailed memory usage as well as CPU stats etc
`top`

### Delete all files in dir (workaround for rm -rf * "argument list is too long")
`find . -type f -delete`

### Find and delete empty files from current dir down
`find . -type f -empty -delete -print`

### Zipping when argument list is too long (omit -xvf etc)
`zip -r my.zip .`

### Install ifconfig if missing
`sudo [yum|apt-get] install -y net-tools`

### Install telnet (non-Alpine/apk)
`sudo [yum|apt-get] install -y telnet|telnet-server`

### Install telnet (Alpine)
```shell
apk update
apk add busybox-extras
```

### Use nc (netcat) to quickly check connectivity with an external host
`nc -v -z hostname port`

### Switch to root user and stay in same directory
`sudo -s`

### Run this before running a bash script to show all executed steps (good for debugging bash scripts)
`set -x`

### Open a port that displays a simple message (accessible via "curl -v localhost:4001")
`echo "Hello, World"  | nc -l 4001`

### View all users 
`cat /etc/passwd`

### View last 1000 lines of a file
`tail -n 1000 <filename>`

### Get tar.gz of Java8_171 from command line (wget)
`wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie;" "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz"`

### Unpacking tar.gz (2 step)
```shell
gzip -d filename.tar.gz
tar -xvf filename.tar
```

### Unpacking tar.gz (1 step)
`tar -xzf filename.tar.gz`

### Revert to default shell
`chsh -s bash`

### Check OS (use either of the below)
```shell
cat /etc/os-release
lsb_release -a
hostnamectl
```

### echo output of command to file
`echo `ls -l ../` >> out.txt`

### Filename to variable
`filename=`basename "$0"``

### Watch a process e.g. docker ps, refresh every second
`watch -n1 'docker ps'`

### Find all unique lines in a file
`sort -u test.txt`

### Find all lines with unique first column (-k1) with comma delimiter (-t,) - useful for sorting through csv files
`sort -u -t, -k1,1 test.csv`

### vi/vim show line numbers
`:set number`

### Find out when all files in a directory were last modified (in reverse order)
`find directoryname/ -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort -r`

### Trim all quotes from input
`<input> | tr -d '"'`

### Find lines in file that do not contain a given string (grep -v) and send to another file
`cat <input_file_name> | grep -v <string_to_ignore> > <output_file_name>`

### Add date and time to history command
`export HISTTIMEFORMAT="%d/%m/%y %T "`

### Remove line from history
`history -d line_number`

### Remove entire history
`history -c`

### Gzip and keep local file
`gzip -k filename`

### Result of previous command
`$?`

### Set current directory to a varable
`readonly dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"`

### Bring in functions from another .sh file in a location relative to the script you're running
`source ${dir}/otherfunctions.sh`
