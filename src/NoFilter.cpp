/*
 * NoFilter.cpp
 *
 *  Created on: 6 Oct 2019
 *      Author: mmaenz
 */

#include "NoFilter.h"

using namespace drogon;

NoFilter::NoFilter() {
	// TODO Auto-generated constructor stub

}

NoFilter::~NoFilter() {
	// TODO Auto-generated destructor stub
}

void NoFilter::doFilter(const HttpRequestPtr &req, FilterCallback &&fcb,
		FilterChainCallback &&fccb) {
	fccb();
}
