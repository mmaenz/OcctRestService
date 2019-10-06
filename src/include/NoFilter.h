/*
 * NoFilter.h
 *
 *  Created on: 6 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_NOFILTER_H_
#define INCLUDE_NOFILTER_H_
#include <drogon/HttpFilter.h>

class NoFilter: public drogon::HttpFilter<NoFilter, false> {
public:
	NoFilter();
	virtual ~NoFilter();
	virtual void doFilter(const drogon::HttpRequestPtr &req,
			drogon::FilterCallback &&fcb, drogon::FilterChainCallback &&fccb)
					override;
};

#endif /* INCLUDE_NOFILTER_H_ */
