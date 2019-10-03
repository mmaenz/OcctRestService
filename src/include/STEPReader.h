/*
 * STEPReader.h
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_STEPREADER_H_
#define INCLUDE_STEPREADER_H_

#include "common.h"
#include "CadReader.h"

class STEPReader : CadReader {
public:
	STEPReader();
	~STEPReader() {};
	void readFile(const std::string);
private:
	Handle(TDocStd_Document) aDoc;
	STEPControl_Reader reader;
};

#endif /* INCLUDE_STEPREADER_H_ */
