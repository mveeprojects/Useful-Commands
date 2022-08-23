# SBT

### See what version of sbt you are using
```shell
sbt sbtVersion
```

### To see even more sbt information about your project
```shell
sbt about
```

### Run tests in a specific module/sub-project
```shell
sbt sbt_project_name/test
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

### Add dependency tree plugin (SBT < 1.4)
```shell
addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.10.0-RC1")
```

### Add dependency tree plugin (SBT >= 1.4 (built-in support))
```shell
addDependencyTreePlugin
```

### Calculate the entire dependency tree and output to file
```shell
sbt dependencyTree > deptree.txt

# Alternatives
dependencyBrowseGraph # (Graph in the browser)
dependencyBrowseTree # (Searchable listing of deps in the browser)
```

### View dependencies evicted by sbt
```shell
sbt evicted
```

### Run sbt in debug mode
```shell
sbt -d | sbt --debug
```

### "Cannot find or load main class: not"
```
Was in my case down to have an incorrectly configured environment variable (SBT_OPTS)
Updated SBT_OPTS in my .zshrc to -> export SBT_OPTS="-Xmx2G -XX:+CMSClassUnloadingEnabled -Xss2M -Duser.timezone=GMT"
```
