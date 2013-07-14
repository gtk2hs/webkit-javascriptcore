#!/bin/sh -ex

cabal clean
mv webkit-javascriptcore.cabal-renamed webkit-javascriptcore.cabal || true
mv webkit3-javascriptcore.cabal webkit3-javascriptcore.cabal-renamed || true
cabal-src-install "$@"

cabal clean
mv webkit3-javascriptcore.cabal-renamed webkit3-javascriptcore.cabal || true
mv webkit-javascriptcore.cabal webkit-javascriptcore.cabal-renamed || true
cabal-src-install "$@"

