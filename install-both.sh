#!/bin/sh -ex

$CABAL clean
mv webkit-javascriptcore.cabal-renamed webkit-javascriptcore.cabal || true
mv webkitgtk3-javascriptcore.cabal webkitgtk3-javascriptcore.cabal-renamed || true
$CABAL install "$@"

$CABAL clean
mv webkitgtk3-javascriptcore.cabal-renamed webkitgtk3-javascriptcore.cabal || true
mv webkit-javascriptcore.cabal webkit-javascriptcore.cabal-renamed || true
$CABAL install "$@"

