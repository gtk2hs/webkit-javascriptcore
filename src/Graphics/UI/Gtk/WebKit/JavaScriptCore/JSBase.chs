{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase where

import Foreign.Ptr 
import Foreign.C.Types 

-- #include <stdbool.h>
#include <JavaScriptCore/JSBase.h>
#include <JavaScriptCore/JSContextRef.h>

typedef int bool  

type BoolC99 = CInt -- {#type _Bool#} 

getBool :: BoolC99 -> Bool
getBool x = let y =fromIntegral x 
                z | y == 0 = False
                z | otherwise = True
            in z 

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

{#fun JSEvaluateScript as ^ {id `JSContextRef', id `JSStringRef', id `JSObjectRef', id `JSStringRef', fromIntegral `Int', id `Ptr JSValueRef'} -> `JSValueRef' id #}
 
{#fun JSCheckScriptSyntax as ^ {id `JSContextRef', id `JSStringRef', id `JSStringRef', fromIntegral `Int', id `Ptr JSValueRef'} -> `Bool' getBool #}

{#fun JSGarbageCollect as ^ {id `JSContextRef'} -> `()' #}

-- {#fun JSContextGroupCreate as ^ {} -> `JSContextGroupRef' id #}

-- {#fun JSGlobalContextRelease as ^ { id `JSGlobalContextRef' } -> `()' #}



