/*
 * EndpointListing.h
 *
 *  Created on: 5 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_ENDPOINTLISTING_H_
#define INCLUDE_ENDPOINTLISTING_H_

#include <map>
#include <string>

#include "../httpserver/httpserver.hpp"
#include "../rapidjson/document.h"
#include "../rapidjson/prettywriter.h"
#include "../rapidjson/stringbuffer.h"

class EndpointListing: public httpserver::http_resource {
public:
	EndpointListing();
	virtual ~EndpointListing();
	const std::shared_ptr<httpserver::http_response> render(const httpserver::http_request&);
	void addEndpoint(std::string path, std::string description);
	std::string getPath(void) {
		return "/";
	}
	std::string getDescription(void) {
		return "Lists all endpoints";
	}

private:
	std::map<std::string, std::string> endpoints;
};

#endif /* INCLUDE_ENDPOINTLISTING_H_ */
