{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.JSObjectRef where

import Foreign.C.String
import Foreign.C.Types 
import Foreign.Ptr 
import Foreign.Storable
import Data.Word (Word)

{# import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

-- {#pointer *JSValueRef as Ptr JSValueRef #}

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

type JSStaticValueRef = {#type JSStaticValueRef #}


value_get_name :: JSStaticValueRef -> IO String 
value_get_name t = {#get JSStaticValue -> name #} t >>= peekCString 

value_set_name :: JSStaticValueRef -> String -> IO ()
value_set_name t str = {#set JSStaticFunction -> name #} t =<< newCString str 


value_get_getProperty :: JSStaticValueRef -> IO JSObjectGetPropertyCallback 
value_get_getProperty t = {#get JSStaticValue -> getProperty #} t


value_set_getProperty :: JSStaticValueRef -> JSObjectGetPropertyCallback -> IO ()
value_set_getProperty t cbk = {#set JSStaticValue -> getProperty #} t cbk 


value_get_setProperty :: JSStaticValueRef -> IO JSObjectSetPropertyCallback 
value_get_setProperty t = {#get JSStaticValue -> setProperty #} t

value_set_setProperty :: JSStaticValueRef -> JSObjectSetPropertyCallback -> IO ()
value_set_setProperty t cbk = {#set JSStaticValue -> setProperty #} t cbk 

value_get_attributes :: JSStaticValueRef -> IO JSPropertyAttributes 
value_get_attributes t = {#get JSStaticValue -> attributes #} t

value_set_attributes :: JSStaticValueRef -> JSPropertyAttributes -> IO ()
value_set_attributes t attr = {#set JSStaticValue -> attributes #} t attr 


type JSStaticFunctionRef = {#type JSStaticFunctionRef #}

func_get_name :: JSStaticFunctionRef -> IO String
func_get_name t = {#get JSStaticFunction -> name #} t >>= peekCString 

func_set_name :: JSStaticFunctionRef -> String -> IO ()
func_set_name t str = {#set JSStaticFunction -> name #} t =<< newCString str

func_get_callAsFunction :: JSStaticFunctionRef -> IO JSObjectCallAsFunctionCallback
func_get_callAsFunction t = {#get JSStaticFunction -> callAsFunction #} t 

func_set_callAsFunction :: JSStaticFunctionRef -> JSObjectCallAsFunctionCallback -> IO ()
func_set_callAsFunction t cbk = {#set JSStaticFunction -> callAsFunction #} t cbk 

func_get_attributes :: JSStaticFunctionRef -> IO JSPropertyAttributes 
func_get_attributes t = {#get JSStaticFunction -> attributes #} t

func_set_attributes :: JSStaticFunctionRef -> JSPropertyAttributes -> IO () 
func_set_attributes t attr = {#set JSStaticFunction -> attributes #} t attr 

type JSClassDefinitionRef = {#type JSClassDefinitionRef #} 

class_get_version :: JSClassDefinitionRef -> IO Int 
class_get_version t = {#get JSClassDefinition -> version #} t >>= return . fromIntegral

class_set_version :: JSClassDefinitionRef -> Int -> IO ()
class_set_version t n = {#set JSClassDefinition -> version #} t (fromIntegral n) 

class_get_attributes :: JSClassDefinitionRef -> IO JSClassAttributes
class_get_attributes t = {#get JSClassDefinition -> attributes #} t

class_set_attributes :: JSClassDefinitionRef -> JSClassAttributes -> IO ()
class_set_attributes t attr = {#set JSClassDefinition -> attributes #} t attr 

class_get_className :: JSClassDefinitionRef -> IO String
class_get_className t = {#get JSClassDefinition -> className #} t >>= peekCString

class_set_className :: JSClassDefinitionRef -> String -> IO ()
class_set_className t cname = {#set JSClassDefinition -> className #} t =<< newCString cname

class_get_parentClass :: JSClassDefinitionRef -> IO JSClassRef
class_get_parentClass t = {#get JSClassDefinition -> parentClass #} t >>= return . castPtr

class_set_parentClass :: JSClassDefinitionRef -> JSClassRef -> IO ()
class_set_parentClass t c = {#set JSClassDefinition -> parentClass #} t (castPtr c)


class_get_staticValues :: JSClassDefinitionRef -> IO JSStaticValueRef
class_get_staticValues t = {#get JSClassDefinition -> staticValues #} t

class_set_staticValues :: JSClassDefinitionRef -> JSStaticValueRef -> IO ()
class_set_staticValues t v = {#set JSClassDefinition -> staticValues #} t v


class_get_staticFunctions :: JSClassDefinitionRef -> IO JSStaticFunctionRef 
class_get_staticFunctions t = {#get JSClassDefinition -> staticFunctions #} t 


class_set_staticFunctions :: JSClassDefinitionRef -> JSStaticFunctionRef -> IO ()
class_set_staticFunctions t f = {#set JSClassDefinition -> staticFunctions #} t f

class_get_initialize :: JSClassDefinitionRef -> IO JSObjectInitializeCallback 
class_get_initialize t = {#get JSClassDefinition -> initialize #} t

class_set_initialize :: JSClassDefinitionRef -> JSObjectInitializeCallback -> IO ()
class_set_initialize t cbk = {#set JSClassDefinition -> initialize #} t cbk  



class_get_finalize :: JSClassDefinitionRef -> IO JSObjectFinalizeCallback 
class_get_finalize t = {#get JSClassDefinition -> finalize #} t

class_set_finalize :: JSClassDefinitionRef -> JSObjectFinalizeCallback -> IO ()
class_set_finalize t f = {#set JSClassDefinition -> finalize #} t f


class_get_hasProperty :: JSClassDefinitionRef -> IO JSObjectHasPropertyCallback 
class_get_hasProperty t = {#get JSClassDefinition -> hasProperty #} t

class_set_hasProperty :: JSClassDefinitionRef -> JSObjectHasPropertyCallback -> IO ()
class_set_hasProperty t f = {#set JSClassDefinition -> hasProperty #} t f

class_get_getProperty :: JSClassDefinitionRef -> IO JSObjectGetPropertyCallback 
class_get_getProperty t = {#get JSClassDefinition -> getProperty #} t

class_set_getProperty :: JSClassDefinitionRef -> JSObjectGetPropertyCallback -> IO ()
class_set_getProperty t f = {#set JSClassDefinition -> getProperty #} t f

class_get_setProperty :: JSClassDefinitionRef -> IO JSObjectSetPropertyCallback 
class_get_setProperty t = {#get JSClassDefinition -> setProperty #} t

class_set_setProperty :: JSClassDefinitionRef -> JSObjectSetPropertyCallback -> IO ()
class_set_setProperty t f = {#set JSClassDefinition -> setProperty #} t f

class_get_deleteProperty :: JSClassDefinitionRef -> IO JSObjectDeletePropertyCallback 
class_get_deleteProperty t = {#get JSClassDefinition -> deleteProperty #} t

class_set_deleteProperty :: JSClassDefinitionRef -> JSObjectDeletePropertyCallback -> IO ()
class_set_deleteProperty t f = {#set JSClassDefinition -> deleteProperty #} t f 

class_get_getPropertyNames :: JSClassDefinitionRef -> IO JSObjectGetPropertyNamesCallback
class_get_getPropertyNames t = {#get JSClassDefinition -> getPropertyNames #} t

class_set_getPropertyNames :: JSClassDefinitionRef -> JSObjectGetPropertyNamesCallback -> IO ()
class_set_getPropertyNames t f = {#set JSClassDefinition -> getPropertyNames #} t f 

class_get_callAsFunction  :: JSClassDefinitionRef -> IO JSObjectCallAsFunctionCallback
class_get_callAsFunction t = {#get JSClassDefinition -> callAsFunction #} t

class_set_callAsFunction :: JSClassDefinitionRef -> JSObjectCallAsFunctionCallback -> IO ()
class_set_callAsFunction t f = {#set JSClassDefinition -> callAsFunction #} t f 


class_get_callAsConstructor :: JSClassDefinitionRef -> IO JSObjectCallAsConstructorCallback
class_get_callAsConstructor t = {#get JSClassDefinition -> callAsConstructor #} t

class_set_callAsConstructor :: JSClassDefinitionRef -> JSObjectCallAsConstructorCallback -> IO ()
class_set_callAsConstructor t f = {#set JSClassDefinition -> callAsConstructor #} t f


class_get_hasInstance :: JSClassDefinitionRef -> IO JSObjectHasInstanceCallback 
class_get_hasInstance t = {#get JSClassDefinition -> hasInstance #} t

class_set_hasInstance :: JSClassDefinitionRef -> JSObjectHasInstanceCallback -> IO ()
class_set_hasInstance t f = {#set JSClassDefinition -> hasInstance #} t f 


class_get_convertToType :: JSClassDefinitionRef -> IO JSObjectConvertToTypeCallback 
class_get_convertToType t = {#get JSClassDefinition -> convertToType #} t

class_set_convertToType :: JSClassDefinitionRef -> JSObjectConvertToTypeCallback -> IO ()
class_set_convertToType t f = {#set JSClassDefinition -> convertToType #} t f


-- kJSClassDefinitionEmpty

{#fun JSClassCreate as ^ {id `JSClassDefinitionRef'} -> `JSClassRef' id #}

{#fun JSClassRetain as ^ {id `JSClassRef'} -> `JSClassRef' id #}

{#fun JSClassRelease as ^ {id `JSClassRef'} -> `()' #}

{#fun JSObjectMake as ^ {id `JSContextRef', id `JSClassRef', id `Ptr ()'} -> `JSObjectRef' id #}

{#fun JSObjectMakeFunctionWithCallback as ^ {id `JSContextRef', id `JSStringRef', id `JSObjectCallAsFunctionCallback'} -> `JSObjectRef' id #}

{#fun JSObjectMakeConstructor as ^ {id `JSContextRef', id `JSClassRef', id `JSObjectCallAsConstructorCallback'} -> `JSObjectRef' id #}

{#fun JSObjectMakeArray as ^ {id `JSContextRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSObjectRef' id #}

{#fun JSObjectMakeDate as ^ {id `JSContextRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSObjectRef' id #}

{#fun JSObjectMakeError as ^ {id `JSContextRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSObjectRef' id #}

{#fun JSObjectMakeRegExp as ^ {id `JSContextRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSObjectRef' id #}


{#fun JSObjectMakeFunction as ^ {id `JSContextRef', id `JSStringRef', id `CUInt', id `JSStringRefRef', id `JSStringRef', id `JSStringRef', fromIntegral `Int', id `JSValueRefRef'} -> `JSObjectRef' id #}

{#fun JSObjectGetPrototype as ^ {id `JSContextRef', id `JSObjectRef'} -> `JSValueRef' id #}

{#fun JSObjectSetPrototype as ^ {id `JSContextRef', id `JSObjectRef', id `JSValueRef'} -> `()' #}

{#fun JSObjectHasProperty as ^ {id `JSContextRef', id `JSObjectRef', id `JSStringRef'} -> `Bool' getBool #}

{#fun JSObjectGetProperty as ^ {id `JSContextRef', id `JSObjectRef', id `JSStringRef', id `JSValueRefRef'} -> `JSValueRef' id #}

{#fun JSObjectSetProperty as ^ {id `JSContextRef', id `JSObjectRef', id `JSStringRef', id `JSValueRef', id `JSPropertyAttributes', id `JSValueRefRef'} -> `()' #}

{#fun JSObjectDeleteProperty as ^ {id `JSContextRef', id `JSObjectRef', id `JSStringRef', id `JSValueRefRef'} -> `Bool' getBool #}

{#fun JSObjectGetPropertyAtIndex as ^ {id `JSContextRef', id `JSObjectRef', id `CUInt', id `JSValueRefRef'} -> `JSValueRef' id #}

{#fun JSObjectSetPropertyAtIndex as ^ {id `JSContextRef', id `JSObjectRef', id `CUInt', id `JSValueRef', id `JSValueRefRef'} -> `()' #}

{#fun JSObjectGetPrivate as ^ {id `JSObjectRef'} -> `Ptr ()' id #}

{#fun JSObjectSetPrivate as ^ {id `JSObjectRef', id `Ptr ()'} -> `Bool' getBool #}

{#fun JSObjectIsFunction as ^ {id `JSContextRef', id `JSObjectRef'} -> `Bool' getBool #}

{#fun JSObjectCallAsFunction as ^ {id `JSContextRef', id `JSObjectRef', id `JSObjectRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSValueRef' id #}

{#fun JSObjectCallAsConstructor as ^ {id `JSContextRef', id `JSObjectRef', fromIntegral `CSize', id `JSValueRefRef', id `JSValueRefRef'} -> `JSObjectRef' id #}
 
{#fun JSObjectCopyPropertyNames as ^ {id `JSContextRef', id `JSObjectRef'} -> `JSPropertyNameArrayRef' id #}

{#fun JSPropertyNameArrayRetain as ^ {id `JSPropertyNameArrayRef'} -> `JSPropertyNameArrayRef' id #}

{#fun JSPropertyNameArrayRelease as ^ {id `JSPropertyNameArrayRef'} -> `()' #}

{#fun JSPropertyNameArrayGetCount as ^ {id `JSPropertyNameArrayRef'} -> `CSize' fromIntegral #}

{#fun JSPropertyNameArrayGetNameAtIndex as ^ {id `JSPropertyNameArrayRef', fromIntegral `CSize'} -> `JSStringRef' id #}

{#fun JSPropertyNameAccumulatorAddName as ^ {id `JSPropertyNameAccumulatorRef', id `JSStringRef'} -> `()' #}







