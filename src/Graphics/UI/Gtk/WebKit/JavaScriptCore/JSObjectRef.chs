{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSObjectRef where

import Foreign.C.String
import Foreign.C.Types 
import Foreign.Ptr 
import Foreign.Storable

{# import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

#include <JavaScriptCore/JSObjectRef.h>
#include "JSObjectRef.chs.h"

type JSPropertyAttributes = {#type JSPropertyAttributes #}

type JSClassAttributes = {#type JSClassAttributes #}

type JSObjectInitializeCallback = {#type JSObjectInitializeCallback #}

type JSObjectFinalizeCallback = {#type JSObjectFinalizeCallback #}

type JSObjectHasPropertyCallback = {#type JSObjectHasPropertyCallback #}

type JSObjectGetPropertyCallback = {#type JSObjectGetPropertyCallback #}

type JSObjectSetPropertyCallback = {#type JSObjectSetPropertyCallback #}

type JSObjectDeletePropertyCallback = {#type JSObjectDeletePropertyCallback #}

type JSObjectGetPropertyNamesCallback = {#type JSObjectGetPropertyNamesCallback #}

type JSObjectCallAsFunctionCallback = {#type JSObjectCallAsFunctionCallback #}

type JSObjectCallAsConstructorCallback = {#type JSObjectCallAsConstructorCallback #}

type JSObjectHasInstanceCallback = {#type JSObjectHasInstanceCallback #}

type JSObjectConvertToTypeCallback = {#type JSObjectConvertToTypeCallback #}

type JSStaticFunctionRef = {#type JSStaticFunctionRef #}

getName :: JSStaticFunctionRef -> IO String
getName t = {#get JSStaticFunction -> name #} t >>= peekCString 

setName :: JSStaticFunctionRef -> String -> IO ()
setName t str = {#set JSStaticFunction -> name #} t =<< newCString str

getCallAsFunction :: JSStaticFunctionRef -> IO JSObjectCallAsFunctionCallback
getCallAsFunction t = {#get JSStaticFunction -> callAsFunction #} t 

setCallAsFunction :: JSStaticFunctionRef -> JSObjectCallAsFunctionCallback -> IO ()
setCallAsFunction t cbk = {#set JSStaticFunction -> callAsFunction #} t cbk 

getAttributes :: JSStaticFunctionRef -> IO JSPropertyAttributes 
getAttributes t = {#get JSStaticFunction -> attributes #} t

setAttributes :: JSStaticFunctionRef -> JSPropertyAttributes -> IO () 
setAttributes t attr = {#set JSStaticFunction -> attributes #} t attr 

type JSClassDefinitionRef = {#type JSClassDefinitionRef #} 

getVersion :: JSClassDefinitionRef -> IO Int 
getVersion t = {#get JSClassDefinition -> version #} t >>= return . fromIntegral

setVersion :: JSClassDefinitionRef -> Int -> IO ()
setVersion t n = {#set JSClassDefinition -> version #} t (fromIntegral n) 









