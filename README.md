Counts the disabled eslint rules recursively through a directory.

Original script via [Callum Macrae's blog](http://macr.ae/article/counting-eslint-disabled.html).

### Output

You'll end up seeing something like this:

```
Searching directory: ./src

  12 max-len
  10 camelcase
   5 no-magic-numbers
   5 id-length
   3 no-underscore-dangle
   1 operator-assignment
   1 no-unused-vars
   1 no-multi-spaces
   1 key-spacing
   1 curly
   1 comma-dangle
   1 brace-style

Done!
```

### Use

```sh
chmod +x count-disables.sh
# defaults to current directory
./count-disables
# or, to specify a directory...
./count-disables "/your/path/here"
```

### TODO
- [ ] Universally ignore `node_modules`
- [ ] Handle edge cases a lil better (just a lil)
