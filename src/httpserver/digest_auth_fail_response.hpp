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

#ifndef _DIGEST_AUTH_FAIL_RESPONSE_HPP_
#define _DIGEST_AUTH_FAIL_RESPONSE_HPP_

#include "string_response.hpp"

namespace httpserver
{

class digest_auth_fail_response : public string_response
{
    public:
        digest_auth_fail_response():
            string_response(),
            realm(""),
            opaque(""),
            reload_nonce(false)
        {
        }

        digest_auth_fail_response(
                const std::string& content,
                const std::string& realm = "",
                const std::string& opaque = "",
                bool reload_nonce = false,
                int response_code = http::http_utils::http_ok,
                const std::string& content_type = http::http_utils::text_plain
        ):
            string_response(content, response_code, content_type),
            realm(realm),
            opaque(opaque),
            reload_nonce(reload_nonce)
        {
        }

        digest_auth_fail_response(const digest_auth_fail_response& other):
            string_response(other),
            realm(other.realm),
            opaque(other.opaque),
            reload_nonce(other.reload_nonce)
        {
        }

        digest_auth_fail_response(digest_auth_fail_response&& other) noexcept:
            string_response(std::move(other)),
            realm(std::move(other.realm)),
            opaque(std::move(other.opaque)),
            reload_nonce(other.reload_nonce)
        {
        }

        digest_auth_fail_response& operator=(const digest_auth_fail_response& b)
        {
            if (this == &b) return *this;

            (string_response&) (*this) = b;
            this->realm = b.realm;
            this->opaque = b.opaque;
            this->reload_nonce = b.reload_nonce;

            return *this;
        }

        digest_auth_fail_response& operator=(digest_auth_fail_response&& b)
        {
            if (this == &b) return *this;

            (string_response&) (*this) = std::move(b);
            this->realm = std::move(b.realm);
            this->opaque = std::move(b.opaque);
            this->reload_nonce = b.reload_nonce;

            return *this;
        }

        ~digest_auth_fail_response()
        {
        }

        int enqueue_response(MHD_Connection* connection, MHD_Response* response);

    private:
        std::string realm;
        std::string opaque;
        bool reload_nonce;
};

}

#endif // _DIGEST_AUTH_FAIL_RESPONSE_HPP_
