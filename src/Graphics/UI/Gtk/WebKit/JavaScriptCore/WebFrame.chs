{-# LANGUAGE EmptyDataDecls, ForeignFunctionInterface #-}

module Graphics.UI.Gtk.WebKit.JavaScriptCore.WebFrame where

import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr 
import Foreign.C.Types 

import Graphics.UI.Gtk.WebKit.Types 
import Graphics.UI.Gtk.WebKit.WebFrame
-- {#import Graphics.UI.Gtk.WebKit.JavaScriptCore.Types #}
{#import Graphics.UI.Gtk.WebKit.JavaScriptCore.JSBase #}

#include <webkit/webkitwebframe.h>

webFrameGetGlobalContext :: WebFrameClass self => self -> IO JSGlobalContextRef
webFrameGetGlobalContext webframe = {#call webkit_web_frame_get_global_context#} ((castPtr.unsafeForeignPtrToPtr.unWebFrame.toWebFrame) webframe) 


