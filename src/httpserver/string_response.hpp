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

#ifndef _STRING_RESPONSE_HPP_
#define _STRING_RESPONSE_HPP_

#include "http_response.hpp"

namespace httpserver
{

class string_response : public http_response
{
    public:
        string_response():
            http_response(),
            content("")
        {
        }

        explicit string_response(
                const std::string& content,
                int response_code = http::http_utils::http_ok,
                const std::string& content_type = http::http_utils::text_plain
        ):
            http_response(response_code, content_type),
            content(content)
        {
        }

        string_response(const string_response& other):
            http_response(other),
            content(other.content)
        {
        }

        string_response(string_response&& other) noexcept:
            http_response(std::move(other)),
            content(std::move(other.content))
        {
        }

        string_response& operator=(const string_response& b)
        {
            if (this == &b) return *this;

            (http_response&) (*this) = b;
            this->content = b.content;

            return *this;
        }

        string_response& operator=(string_response&& b)
        {
            if (this == &b) return *this;

            (http_response&) (*this) = std::move(b);
            this->content = std::move(b.content);

            return *this;
        }

        ~string_response()
        {
        }

        MHD_Response* get_raw_response();

    private:
        std::string content;
};

}
#endif // _STRING_RESPONSE_HPP_
