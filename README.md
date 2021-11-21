# Purescript Rollup Starter
The starter app for purescript project configured with rollup

## Requirements
- [Spago](https://github.com/purescript/spago)

## Running on Development
```sh
yarn start
```
## Build
```sh
yarn build
```

## Formatter
```sh
yarn format
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
- [X] Hot Reload
- [X] Beautify Formatter

## Note
- Hot reload can little bit slow, because that's has several process start from build and bundled `.purs -> .js`
- `package.json` file, only used for manage bundle packages. For installing purescript packages, you must type `spago install <package_name>`
- If you not use **spago**, you can use `packages.dhall` for installing packages
