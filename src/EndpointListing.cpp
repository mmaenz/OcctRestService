/*
 * EndpointListing.cpp
 *
 *  Created on: 5 Oct 2019
 *      Author: mmaenz
 */

#include "include/EndpointListing.h"
#include <iostream>

EndpointListing::EndpointListing() {
	addEndpoint(getPath(), getDescription());
}

EndpointListing::~EndpointListing() {
	// TODO Auto-generated destructor stub
}

const std::shared_ptr<httpserver::http_response> EndpointListing::render(
		const httpserver::http_request&) {
	rapidjson::Document document;
	document.SetObject();
	rapidjson::Document::AllocatorType &allocator = document.GetAllocator();
	rapidjson::Value jsonEndpoints(rapidjson::kObjectType);
	for (auto const& endpoint : endpoints) {
		jsonEndpoints.AddMember(
				rapidjson::Value(endpoint.first.c_str(), allocator).Move(),
				rapidjson::Value(endpoint.second.c_str(), allocator).Move(), allocator);
	}

	document.AddMember("Available endpoint-listing", jsonEndpoints, allocator);

	rapidjson::StringBuffer buffer;
	rapidjson::PrettyWriter<rapidjson::StringBuffer> writer(buffer);
	document.Accept(writer);
	std::string endpoints(buffer.GetString());

	return std::shared_ptr<httpserver::http_response>(
			new httpserver::string_response(buffer.GetString()));
}

void EndpointListing::addEndpoint(std::string path, std::string description) {
	std::cout << path << " added" << std::endl;
	endpoints.insert(make_pair(path, description));
}
