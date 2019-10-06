/*
 * Writer.h
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_CADWRITER_H_
#define INCLUDE_CADWRITER_H_

#include "Structure.h"
#include <string>

class CadWriter {
public:
	virtual void writeToFile(Structure&, std::string&);
};

#endif /* INCLUDE_CADWRITER_H_ */
