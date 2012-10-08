{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSStringRef where

import Foreign.Ptr 
import Foreign.C.String
import Foreign.C.Types 

{#import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}
{#import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSValueRef #}

#include <JavaScriptCore/JSStringRef.h>

type JSChar = {#type JSChar #}
{#pointer *JSChar as JSCharRef -> JSChar #}

{#fun JSStringCreateWithCharacters as ^ { id `JSCharRef', id `CULong' } -> `JSStringRef' id #}

{#fun JSStringCreateWithUTF8CString as ^ { `String' } -> `JSStringRef' id #}

{#fun JSStringRetain as ^ { id `JSStringRef' } -> `JSStringRef' id #}

{#fun JSStringRelease as ^ { id `JSStringRef' } -> `()' #} 

{#fun JSStringGetLength as ^ { id `JSStringRef' } -> `CULong' fromIntegral #}

{#fun JSStringGetCharactersPtr as ^ {id `JSStringRef' } -> `JSCharRef' id #}

{#fun JSStringGetMaximumUTF8CStringSize as ^ {id `JSStringRef'} -> `CULong' id #}

{#fun JSStringGetUTF8CString as ^ {id `JSStringRef', `String', id `CULong'} -> `CULong' id #}

{#fun JSStringIsEqual as ^ {id `JSStringRef', id `JSStringRef' } -> `Bool' getBool #} 

{#fun JSStringIsEqualToUTF8CString as ^ {id `JSStringRef', `String'} -> `Bool' getBool #}

