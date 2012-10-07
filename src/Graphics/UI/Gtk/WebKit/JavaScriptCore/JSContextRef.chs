{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSContextRef where

import Foreign.Ptr 
import Foreign.C.Types 

-- import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSObjectRef
-- import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSValueRef 

{#import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

#include <JavaScriptCore/JSBase.h>
#include <JavaScriptCore/JSContextRef.h>

-- {#pointer JSGlobalContextRef as JSGlobalContextRef -> OpaqueJSContext #}

{#fun JSContextGroupCreate as ^ {} -> `JSContextGroupRef' id #}

{#fun JSContextGroupRetain as ^ {id `JSContextGroupRef'} -> `JSContextGroupRef' id #}

{#fun JSContextGroupRelease as ^ {id `JSContextGroupRef'} -> `()' #}

{#fun JSGlobalContextCreate as ^ {id `JSClassRef'} -> `JSGlobalContextRef' id #}

{#fun JSGlobalContextCreateInGroup as ^ {id `JSContextGroupRef', id `JSClassRef'} -> `JSGlobalContextRef' id #}

{#fun JSGlobalContextRetain as ^ {id `JSGlobalContextRef'} -> `JSGlobalContextRef' id #}

{#fun JSGlobalContextRelease as ^ { id `JSGlobalContextRef' } -> `()' #}

{#fun JSContextGetGlobalObject as ^ { id `JSContextRef' } -> `JSObjectRef' id #}

{#fun JSContextGetGroup as ^ { id `JSContextRef' } -> `JSContextGroupRef' id #}

