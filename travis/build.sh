#!/bin/bash -ex

echo $PATH
export LC_ALL=C.UTF-8

if [[ -d .cabal && -d .ghc ]]; then
    cp -a .cabal .ghc /root
fi

cabal update
cabal install gtk2hs-buildtools

cabal new-build

rm -rf dist-newstyle
mv webkitgtk3-javascriptcore.cabal-renamed webkitgtk3-javascriptcore.cabal
mv webkit2gtk3-javascriptcore.cabal webkit2gtk3-javascriptcore.cabal-renamed
cabal new-build

rm -rf dist-newstyle
mv webkit-javascriptcore.cabal-renamed webkit-javascriptcore.cabal
mv webkitgtk3-javascriptcore.cabal webkitgtk3-javascriptcore.cabal-renamed
cabal new-build

# update the cache
rm -rf .cabal
cp -a /root/.cabal ./
rm -rf .ghc
cp -a /root/.ghc ./

if [ "$all_done" = false ]; then
    echo "Still warming up the Cache.  Please rerun this build."
    exit 1
fi