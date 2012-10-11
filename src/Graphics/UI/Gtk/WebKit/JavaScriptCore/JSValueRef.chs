{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSValueRef where

import Foreign.Ptr 
import Foreign.C.Types 


{#import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

#include <JavaScriptCore/JSValueRef.h>

{#enum JSType {underscoreToCase} deriving (Show,Eq) #}

toEnumFromIntegral :: (Enum a, Integral i) => i -> a  
toEnumFromIntegral = toEnum . fromIntegral 



{#fun JSValueGetType as ^ {id `JSContextRef', id `JSValueRef'}-> `JSType' toEnumFromIntegral #}

{#fun JSValueIsUndefined as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsNull as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsBoolean as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsNumber as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsString as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsObject as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueIsObjectOfClass as ^ {id `JSContextRef', id `JSValueRef', id `JSClassRef'} -> `Bool' getBool #}

{#fun JSValueIsEqual as ^ {id `JSContextRef', id `JSValueRef', id `JSValueRef', id `JSValueRefRef'} -> `Bool' getBool #}

{#fun JSValueIsStrictEqual as ^ {id `JSContextRef', id `JSValueRef', id `JSValueRef'} -> `Bool' getBool #} 

{#fun JSValueIsInstanceOfConstructor as ^ {id `JSContextRef', id `JSValueRef', id `JSObjectRef', id `JSValueRefRef'} -> `Bool' getBool #}

{#fun JSValueMakeUndefined as ^ {id `JSContextRef'} -> `JSValueRef' id #}

{#fun JSValueMakeNull as ^ {id `JSContextRef'} -> `JSValueRef' id #}

{#fun JSValueMakeBoolean as ^ {id `JSContextRef', setBool `Bool'} -> `JSValueRef' id #}

{#fun JSValueMakeNumber as ^ {id `JSContextRef', realToFrac `Double' } -> `JSValueRef' id #}

{#fun JSValueMakeString as ^ {id `JSContextRef', id `JSStringRef'} -> `JSValueRef' id #}

{#fun JSValueMakeFromJSONString as ^ {id `JSContextRef', id `JSStringRef'} -> `JSValueRef' id #}

{#fun JSValueCreateJSONString as ^ {id `JSContextRef', id `JSValueRef', fromIntegral `CUInt', id `JSValueRefRef'} -> `JSStringRef' id #}

{#fun JSValueToBoolean as ^ {id `JSContextRef', id `JSValueRef'} -> `Bool' getBool #}

{#fun JSValueToNumber as ^ {id `JSContextRef', id `JSValueRef', id `JSValueRefRef'} -> `Double' realToFrac #}

{#fun JSValueToStringCopy as ^ {id `JSContextRef', id `JSValueRef', id `JSValueRefRef'} -> `JSStringRef' id #}

{#fun JSValueToObject as ^ {id `JSContextRef', id `JSValueRef', id `JSValueRefRef'} -> `JSObjectRef' id #}

{#fun JSValueProtect as ^ {id `JSContextRef', id `JSValueRef'} -> `()' #}

{#fun JSValueUnprotect as ^ {id `JSContextRef', id `JSValueRef'} -> `()' #}
