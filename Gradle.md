# Gradle

### Install via brew
```shell
brew install gradle@6|7|8
```

### Create/update gradle wrapper
```shell
gradle wrapper
```

### Run a task (build) against a particular [sub]project
```shell
gradle :projectname:build
```

### Clean then run a task (build) against a project
```shell
gradle clean :projectname:build
```

### Copy dependency tree to file
```shell
./gradlew dependencies > deps.txt
./gradlew project_name:dependencies > deps.txt
```
