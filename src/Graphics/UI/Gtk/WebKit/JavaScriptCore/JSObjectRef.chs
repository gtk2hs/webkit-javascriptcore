{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSObjectRef where

import Foreign.Ptr 
import Foreign.C.Types 

{# import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

#include <JavaScriptCore/JSContextRef.h>

type JSClassAttributes = {#type JSClassAttributes #}

type JSObjectInitializeCallback = {#type JSObjectInitializeCallback #}

type JSObjectFinalizeCallback = {#type JSObjectFinalizeCallback #}

-- type JSObjectHasPropertyCallback = {#type JSObjectHasPropertyCallback #}







