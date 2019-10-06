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

class EndpointListing {
public:
	EndpointListing();
	virtual ~EndpointListing();
	void addEndpoint(std::string path, std::string description);
	std::string getPath(void) {
		return "/";
	}
	std::string getDescription(void) {
		return "Lists all endpoints";
	}
	std::string getResponse(void);
private:
	std::map<std::string, std::string> endpoints;
};

#endif /* INCLUDE_ENDPOINTLISTING_H_ */
