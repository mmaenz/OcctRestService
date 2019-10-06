/*
 * EndpointListing.cpp
 *
 *  Created on: 5 Oct 2019
 *      Author: mmaenz
 */

#include "include/EndpointListing.h"
#include "include/Endpoints.h"
#include <iostream>
#include <json/json.h>

EndpointListing::EndpointListing() {
	Endpoints::getInstance().addEndpoint(getPath(), getDescription());
}

EndpointListing::~EndpointListing() {
	// TODO Auto-generated destructor stub
}

void EndpointListing::asyncHandleHttpRequest(const HttpRequestPtr& req,
		std::function<void(const HttpResponsePtr &)> &&callback) {
	auto resp = HttpResponse::newHttpResponse();
	Json::Value root;
	for (const auto& endpoint : Endpoints::getInstance().getEndpoints()) {
		Json::Value element;
		element[endpoint.first] = endpoint.second;
		root.append(element);
	}

	Json::StyledWriter styledWriter;
	resp->setBody(styledWriter.write(root));
	resp->setContentTypeCode(CT_APPLICATION_JSON);
	resp->setExpiredTime(0);
	callback(resp);
}

std::string EndpointListing::getResponse(void) {
}
