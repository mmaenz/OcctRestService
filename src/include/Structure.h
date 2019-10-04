/*
 * Structure.h
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#ifndef INCLUDE_STRUCTURE_H_
#define INCLUDE_STRUCTURE_H_

#include <vector>
#include "Assembly.h"

class Structure {
public:
	Structure();
	~Structure() {}
	void addAssembly(Assembly&);
	std::vector<Assembly>& getAssemblyList();
	//json::JSON exportJSON();
private:
	std::vector<Assembly> assemblyList;
};

#endif /* INCLUDE_STRUCTURE_H_ */
