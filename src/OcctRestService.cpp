//============================================================================
// Name        : OcctRestService.cpp
// Author      : Michael Maenz
// Version     :
// Copyright   : 
// Description : Hello World in C++, Ansi-style
//============================================================================

#include "include/common.h"

#include <memory>
#include <cstdlib>
#include <restbed>

using namespace std;
using namespace restbed;

void post_method_handler(const shared_ptr<Session> session) {
	const auto request = session->get_request();

	int content_length = request->get_header("Content-Length", 0);

	session->fetch(content_length,
			[](const shared_ptr<Session> session, const Bytes &body) {
				fprintf( stdout, "%.*s\n", (int) body.size(), body.data());
				session->close(OK, "Hello, World!",
						{ { "Content-Length", "13" } });
			});
}

void load_shape(void) {
	Handle(TDocStd_Document) aDoc;
	Handle(XCAFApp_Application) anApp = XCAFApp_Application::GetApplication();
	//anApp->
	//anApp->NewDocument(aDoc);
	//TopoDS_CompSolid *compSolid = new TopoDS_CompSolid();
}



int main(const int, const char**) {
	load_shape();
	return EXIT_SUCCESS;
}

/*
int main(const int, const char**) {
	auto resource = make_shared<Resource>();
	resource->set_path("/resource");
	resource->set_method_handler("POST", post_method_handler);

	auto settings = make_shared<Settings>();
	settings->set_port(1984);
	settings->set_default_header("Connection", "close");

	Service service;
	service.publish(resource);
	service.start(settings);

	return EXIT_SUCCESS;
}
*/
