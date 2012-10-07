{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSContextRef where

import Foreign.Ptr 
import Foreign.C.Types 

import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSObjectRef
import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSValueRef 

#include <JavaScriptCore/JSContextRef.h>

{#fun JSContextGroupCreate as ^ {} -> `JSContextGroupRef' id #}
