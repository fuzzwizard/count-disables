Counts the disabled eslint rules recursively through a directory.

Original script via [Callum Macrae's blog](http://macr.ae/article/counting-eslint-disabled.html).

### Use

```sh
chmod +x count-disables.sh
# defaults to current directory
./count-disables
# or, to specify a directory...
./count-disables "/your/path/here"
```

### TODO
- [  ] Universally ignore `node_modules`
