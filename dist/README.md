
## Requirements
- Spago

## Build (First)
```sh
# Install all dependencies (if not done so already) and
# compile the code
spago build
```

## Run Development (Not Watch)
This will executed `src/Main.purs`

```sh
spago run
```

## Install Purs Packages
```sh
spago install <package_name>
```

## Build Watch
```sh
# Automatically re-build project whenever a source/test file is changed/saved
# and clear the screen before rebuilding
spago build --watch --clear-screen
```