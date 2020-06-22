Run a single test class
sbt "testOnly MyTestClassNameSpec"

Run all test classes based on a matcher (wildcard)
sbt "testOnly MyTes*"
sbt "testOnly *NameSpec"
sbt "testOnly *Name*"

Continually monitor a given set of tests for changes and re-run when changed
sbt "~testOnly MyTes*"
