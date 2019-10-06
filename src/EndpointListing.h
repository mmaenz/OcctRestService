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
#include <drogon/HttpSimpleController.h>

using namespace drogon;

class EndpointListing: public drogon::HttpSimpleController<EndpointListing> {
public:
	EndpointListing();
	virtual ~EndpointListing();
	virtual void asyncHandleHttpRequest(const HttpRequestPtr& req,
			std::function<void(const HttpResponsePtr &)> &&callback) override;PATH_LIST_BEGIN
		PATH_ADD("/", Get);PATH_LIST_END
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
