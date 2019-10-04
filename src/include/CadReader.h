/*
 * CadReader.h
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#ifndef CADREADER_H_
#define CADREADER_H_

#include "Structure.h"
#include <string>


class CadReader {
public:
	virtual ~CadReader() {}
	virtual void readFile(const std::string&) {};
};

#endif /* CADREADER_H_ */
