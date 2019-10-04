/*
 * Structure.cpp
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#include "include/Structure.h"

Structure::Structure() {
}

std::vector<Assembly>& Structure::getAssemblyList(){
	return assemblyList;
}

void Structure::addAssembly(Assembly &assembly) {
	assemblyList.push_back(assembly);
}

/*
json::JSON Structure::exportJSON() {
	json::JSON j;
	return j;
}
*/
