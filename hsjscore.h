/*
 * Copyright (C) 2009 Cjacker Huang <jzhuang@redflag-linux.com>.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

#ifndef HS_WEBKITJAVASCRIPTCORE_H
#define HS_WEBKITJAVASCRIPTCORE_H

#ifdef __BLOCKS__
#undef __BLOCKS__
#endif

#ifdef __clang__
#undef __clang__
#endif

#ifndef JSC_API_AVAILABLE
#define JSC_API_AVAILABLE(...)
#endif

/* to avoid stdbool.h error in JavaScriptCore/JSBase.h*/
#define _Bool unsigned char // unsigned short // previously, int

#define CALLBACK
#define WINAPI

#include <JavaScriptCore/JSBase.h>
#include <JavaScriptCore/JSContextRef.h>
#include <JavaScriptCore/JSObjectRef.h>
#include <JavaScriptCore/JSStringRef.h>
#include <JavaScriptCore/JSValueRef.h>

typedef JSStaticValue* JSStaticValueRef;

typedef JSStaticFunction* JSStaticFunctionRef;

typedef JSClassDefinition* JSClassDefinitionRef;
#endif
