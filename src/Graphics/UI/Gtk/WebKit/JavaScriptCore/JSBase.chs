{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase where

import Foreign.Ptr 
import Foreign.C.Types 
import Debug.Trace

-- #include <stdbool.h>
#include <JavaScriptCore/JSBase.h>
#include <JavaScriptCore/JSContextRef.h>

-- | conversion from CInt to Bool 
--   strangely, n often becomes -256 for False
getBool :: CUChar -> Bool --  CInt -> Bool 
getBool n | n == 1 = True 
          | otherwise = False 

setBool :: Bool -> CUChar -- CInt 
setBool True = 1
setBool False = 0

data OpaqueJSContextGroup 
{#pointer JSContextGroupRef as JSContextGroupRef -> OpaqueJSContextGroup #} 

data OpaqueJSContext 
{#pointer JSContextRef as JSContextRef -> OpaqueJSContext #}
{#pointer JSGlobalContextRef as JSGlobalContextRef -> OpaqueJSContext #}

data OpaqueJSString 
{#pointer JSStringRef as JSStringRef -> OpaqueJSString #}

data OpaqueJSClass
{#pointer JSClassRef as JSClassRef -> OpaqueJSClass #}

data OpaqueJSPropertyNameArray
{#pointer JSPropertyNameArrayRef as JSPropertyNameArrayRef -> OpaqueJSPropertyNameArray #}

data OpaqueJSPropertyNameAccumulator 
{#pointer JSPropertyNameAccumulatorRef as JSPropertyNameAccumulatorRef -> OpaqueJSPropertyNameAccumulator #}

data OpaqueJSValue 
{#pointer JSValueRef as JSValueRef -> OpaqueJSValue #}
{#pointer JSObjectRef as JSObjectRef -> OpaqueJSValue #}

{#pointer *JSValueRef as JSValueRefRef -> JSValueRef #}
{#pointer *JSStringRef as JSStringRefRef -> JSStringRef #}


{#fun JSEvaluateScript as ^ {id `JSContextRef', id `JSStringRef', id `JSObjectRef', id `JSStringRef', fromIntegral `Int', id `JSValueRefRef'} -> `JSValueRef' id #}
 
{#fun JSCheckScriptSyntax as ^ {id `JSContextRef', id `JSStringRef', id `JSStringRef', fromIntegral `Int', id `JSValueRefRef'} -> `Bool' getBool #}

{#fun JSGarbageCollect as ^ {id `JSContextRef'} -> `()' #}




