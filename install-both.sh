#!/bin/sh -ex

cabal clean
mv webkit-javascriptcore.cabal-renamed webkit-javascriptcore.cabal || true
mv webkitgtk3-javascriptcore.cabal webkitgtk3-javascriptcore.cabal-renamed || true
cabal install "$@"

cabal clean
mv webkitgtk3-javascriptcore.cabal-renamed webkitgtk3-javascriptcore.cabal || true
mv webkit-javascriptcore.cabal webkit-javascriptcore.cabal-renamed || true
cabal install "$@"

