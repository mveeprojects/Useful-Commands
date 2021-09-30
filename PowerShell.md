# Powershell

### Find process running on a port and show pid
```shell
netstat -ano | grep 8080
```

### Kill process by pid
```shell
taskkill /PID <pid> /F
```

### Install Linux for Windows
```shell
(run as admin) Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Now install your preferred version of linux https://docs.microsoft.com/en-us/windows/wsl/install-win10


### Modify hosts file (requires Linux for Windows)
```shell
C:\Windows\System32\drivers\etc\hosts
bash -c "nano hosts"
```

### Setting file/dir permissions (equivalent of chmod)

Taken from https://superuser.com/questions/1002883/how-do-i-specify-chmod-744-in-powershell

```
Set Owner of a specific file
ICACLS "D:\test\test.txt" /setowner "administrator"

Grant Full Control
ICACLS "D:\test\test.txt" /grant:r "administrator:(F)" /C

Grant Read and Execute Access of a specific file
ICACLS "D:\test\test.txt" /grant:r "users:(RX)" /C

Grant Read-only Access of a specific file
ICACLS "D:\test\test.txt" /grant:r "users:(R)" /C
```