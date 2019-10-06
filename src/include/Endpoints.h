/*
 * Endpoints.h
 *
 *  Created on: 6 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_ENDPOINTS_H_
#define INCLUDE_ENDPOINTS_H_

#include <map>
#include <string>

class Endpoints {
public:
	static Endpoints& getInstance(void) {
		static Endpoints instance;
		return instance;
	}
	void addEndpoint(std::string path, std::string description);
	const std::map<std::string, std::string>& getEndpoints(void) const;
private:
	Endpoints() = default;
	virtual ~Endpoints() = default;
	Endpoints(const Endpoints&) = delete;
	Endpoints& operator=(Endpoints&) = delete;
	std::map<std::string, std::string> endpoints;
};

#endif /* INCLUDE_ENDPOINTS_H_ */
