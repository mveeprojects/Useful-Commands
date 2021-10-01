# IntelliJ

### Enable/Disable auto import (maven)
```
⌘ + , -> "Build, Execution, Deployment" -> "Build Tools" -> "Maven" -> "importing" -> "Import Maven projects automatically"
```

### Configure trusted locations
```
Settings/Preferences dialog ⌘ + , "Build, Execution, Deployment" -> "Trusted Locations"
```

### Convert Java class to Scala object
```
Ctrl + shift + g
```

### If you do not have the option to create Scala class
```
Right click on your project, "Add Framework support" and choose Scala framework
```

### Change colour of comments etc.
```
(cmd + ,) -> Editor -> Color Scheme -> Language Defaults
```

### Change terminal from using sh to bash
```
cmd + comma -> Tools -> Terminal -> Shell Path
```

### Switch formatter to scalafmt
```
cmd + comma -> Editor -> Code Style -> Scala -> Formatter dropdown
```

### Run JavaAgent alongside app
```
VM Options -> -javaagent:<javaagentpathfromrootofproject>
```

### Fold elements
```
cmd + alt + -
```
