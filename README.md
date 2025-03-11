# Hare bindings for libgit2

This is a set of bindings for [libgit2](https://libgit2.org/).

Most symbols correspond to the libgit2 API directly with the `git_`/`GIT_`
prefix removed.

## Building and linking

Remember to pass `-lgit2` to `hare build`, or otherwise link against `libgit2`.

## Vendoring 

```
git subtree -P vendor/hare-libgit2/ add ssh://forge.runxiyu.org/hare/:/repos/hare-libgit2/ master
```

## Contributing

Create a branch that begins with `contrib/` and push to the
[main repo](https://forge.runxiyu.org/hare/:/repos/hare-libgit2/)
via SSH directly.

```
git clone ssh://forge.runxiyu.org/hare/:/repos/hare-libgit2/
cd hare-libgit2
git checkout -b contrib/whatever
# edit and commit stuff
git push -u origin HEAD
```

## License

GNU GPL version 2, with an linking exception. See the `COPYING` file for details.
