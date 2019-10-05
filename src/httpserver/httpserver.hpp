/*
     This file is part of libhttpserver
     Copyright (C) 2011-2019 Sebastiano Merlino

     This library is free software; you can redistribute it and/or
     modify it under the terms of the GNU Lesser General Public
     License as published by the Free Software Foundation; either
     version 2.1 of the License, or (at your option) any later version.

     This library is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty of
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
     Lesser General Public License for more details.

     You should have received a copy of the GNU Lesser General Public
     License along with this library; if not, write to the Free Software
     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301
     USA
*/

#ifndef _HTTPSERVER_HPP_
#define _HTTPSERVER_HPP_

#define _HTTPSERVER_HPP_INSIDE_
#define HTTPSERVER_COMPILATION
#include "http_utils.hpp"
#include "http_resource.hpp"
#include "http_response.hpp"

#include "string_response.hpp"
#include "basic_auth_fail_response.hpp"
#include "digest_auth_fail_response.hpp"
#include "deferred_response.hpp"
#include "file_response.hpp"

#include "http_request.hpp"
#include "webserver.hpp"

#endif
