See what version of sbt you are using
sbt sbtVersion

To see even more sbt information about your project
sbt about

Run a single test class
sbt "testOnly MyTestClassNameSpec"

Run all test classes based on a matcher (wildcard)
sbt "testOnly MyTes*"
sbt "testOnly *NameSpec"
sbt "testOnly *Name*"

Continually monitor (~) a given set of tests for changes and re-run when changed
sbt "~testOnly MyTes*"

Run all test classes in a specific package using matcher (wildcard)
sbt "testOnly com.my.package*"

Run all test classes based on a matcher (wildcard) in a specific package
sbt "testOnly com.my.package.MyTest*"

Run all test classes based on a matcher (wildcard) without specifying package
sbt "testOnly *MyTest*"

Calculate the entire dependency tree and output to file
sbt dependencyTree > deptree.txt
