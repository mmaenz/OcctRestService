/*
 * STEPReader.cpp
 *
 *  Created on: 3 Oct 2019
 *      Author: mmaenz
 */

#include "STEPReader.h"
#include "aixlog.h"
#include <cstddef>

using namespace std;

STEPReader::STEPReader() {
	AixLog::Log::init<AixLog::SinkCout>(AixLog::Severity::trace, AixLog::Type::normal);
	Handle(TDocStd_Document) aDoc;
	Handle(XCAFApp_Application) anApp = XCAFApp_Application::GetApplication();
}

void STEPReader::readFile(std::string fileName) {
	TCollection_AsciiString occfile(fileName.c_str());
	if(reader.ReadFile(occfile.ToCString()) != IFSelect_RetDone) {
		LOG(ERROR) << "Could not read file " + fileName;
	}
	LOG(INFO) << "Model read!";
}

