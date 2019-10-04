/*
 * Assembly.cpp
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#include "include/Assembly.h"

Assembly::Assembly() {
	// TODO Auto-generated constructor stub
}

std::vector<Part>& Assembly::getPartList() {
	return partList;
}

void Assembly::addPart(Part& part) {
	partList.push_back(part);
}
