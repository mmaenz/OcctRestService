/*
 * Endpoints.cpp
 *
 *  Created on: 6 Oct 2019
 *      Author: mmaenz
 */

#include "include/Endpoints.h"
#include <iostream>

void Endpoints::addEndpoint(std::string path, std::string description) {
	std::cout << "Endpoint " << path << " added" << std::endl;
	endpoints.insert(make_pair(path, description));
}

const std::map<std::string, std::string>& Endpoints::getEndpoints(void) const {
	return endpoints;
}
