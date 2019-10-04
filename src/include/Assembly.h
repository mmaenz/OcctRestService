/*
 * Assembly.h
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_ASSEMBLY_H_
#define INCLUDE_ASSEMBLY_H_

#include <vector>
#include "Part.h"

class Assembly {
public:
	Assembly();
	std::vector<Part>& getPartList();
	void addPart(Part&);
private:
	std::vector<Part> partList;
};

#endif /* INCLUDE_ASSEMBLY_H_ */
