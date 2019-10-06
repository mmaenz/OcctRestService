/*
 * EndpointListing.cpp
 *
 *  Created on: 5 Oct 2019
 *      Author: mmaenz
 */

#include "include/EndpointListing.h"
#include <iostream>

#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/writer.h"
#include "rapidjson/prettywriter.h"

EndpointListing::EndpointListing() {
	addEndpoint(getPath(), getDescription());
}

EndpointListing::~EndpointListing() {
	// TODO Auto-generated destructor stub
}

void EndpointListing::asyncHandleHttpRequest(const HttpRequestPtr& req,
		std::function<void(const HttpResponsePtr &)> &&callback) {
	auto resp = HttpResponse::newHttpResponse();
	rapidjson::Document document;
	document.SetObject();
	rapidjson::Document::AllocatorType &allocator = document.GetAllocator();
	rapidjson::Value jsonEndpoints(rapidjson::kObjectType);
	for (const auto& endpoint : endpoints) {
		jsonEndpoints.AddMember(
				rapidjson::Value(endpoint.first.c_str(), allocator).Move(),
				rapidjson::Value(endpoint.second.c_str(), allocator).Move(), allocator);
	}

	document.AddMember("Available endpoint-listing", jsonEndpoints, allocator);

	rapidjson::StringBuffer buffer;
	rapidjson::PrettyWriter<rapidjson::StringBuffer> writer(buffer);
	document.Accept(writer);
	std::string endpoints(buffer.GetString());
	resp->setBody(buffer.GetString());
	resp->setContentTypeCode(CT_APPLICATION_JSON);
	resp->setExpiredTime(0);
	callback(resp);
}

std::string EndpointListing::getResponse(void) {
}

void EndpointListing::addEndpoint(std::string path, std::string description) {
	std::cout << path << " added" << std::endl;
	endpoints.insert(make_pair(path, description));
}
