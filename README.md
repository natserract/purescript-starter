# Purescript Rollup Starter
The starter app for purescript project configured with rollup

## Requirements
- [Spago](https://github.com/purescript/spago)

## Running on Development
```sh
spago run
```
## Build
```sh
yarn build
```

## Install Purs Packages
```sh
# After installing packages,
# You must type spago build for synchronize
spago install <package_name>
```

## Features
- [X] Module Bundling
- [X] Semantic emojified git commit
- [X] Hot Reload (little bit slow)

## Note
- `package.json` file, only used for manage bundle packages. For installing purescript packages, you must type `spago install <package_name>`
- If you not use **spago**, you can use `packages.dhall` for installing packages