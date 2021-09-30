# SBT

### See what version of sbt you are using
```shell
sbt sbtVersion
```

### To see even more sbt information about your project
```shell
sbt about
```

### Run a single test class
```shell
sbt "testOnly MyTestClassNameSpec"
```

### Run all test classes based on a matcher (wildcard)
```shell
sbt "testOnly MyTes*"
sbt "testOnly *NameSpec"
sbt "testOnly *Name*"
```

### Continually monitor (~) a given set of tests for changes and re-run when changed
```shell
sbt "~testOnly MyTes*"
```

### Run all test classes in a specific package using matcher (wildcard)
```shell
sbt "testOnly com.my.package*"
```

### Run all test classes based on a matcher (wildcard) in a specific package
```shell
sbt "testOnly com.my.package.MyTest*"
```

### Run all test classes based on a matcher (wildcard) without specifying package
```shell
sbt "testOnly *MyTest*"
```

### Calculate the entire dependency tree and output to file
```shell
sbt dependencyTree > deptree.txt
```
