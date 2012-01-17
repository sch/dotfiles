Pretty Simple
=============

Just symlink stuff with ln -s [file] ~/.[file]

Oh, And
-------

It's three commands when you're adding new plugin:
  git submodule add URL bundle/NAME
  git submodule init
  git submodule update
To update all:
  git submodule update
  git submodule foreach git pull origin master

