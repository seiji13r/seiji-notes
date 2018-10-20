# Node JS Installation Notes in macOSHighSierra

# Installing Node Js 8
```bash
brew unlink node
brew install node@8
brew link node@8
brew link --force --overwrite node@8
node --version
```

## Uninstall
```bash
node --version
brew unlink node
brew uninstall node
brew install node@8
brew link node@8
brew link --force --overwrite node@8
node --version
```

[Reference](https://medium.com/@katopz/how-to-install-specific-nodejs-version-c6e1cec8aa11)