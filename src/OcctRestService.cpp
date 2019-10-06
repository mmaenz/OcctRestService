//============================================================================
// Name        : OcctRestService.cpp
// Author      : Michael Maenz
// Version     :
// Copyright   :
// Description : Hello World in C++, Ansi-style
//============================================================================
#define OCCT_DEBUG

#include "include/OpenCascade.h"

#include <memory>
#include <fstream>
#include <cstdlib>
#include <cstdio>

inline bool fileExists(const std::string name) {
	std::ifstream f(name.c_str());
	return f.good();
}

int convert(std::string in, std::string out) {
	std::cout << in << " -> " << out << std::endl;
	if (fileExists(in)) {
		STEPControl_Reader reader;
		try {
			OCC_CATCH_SIGNALS
			IFSelect_ReturnStatus stat = reader.ReadFile(in.c_str());
			if (stat != IFSelect_RetDone) {
				std::cout << "Can't load file." << std::endl;
				return -1;
			}
			//Standard_Integer NbRoots = reader.NbRootsForTransfer();
			reader.NbRootsForTransfer();
			//Standard_Integer NbTrans = reader.TransferRoots();
			reader.TransferRoots();
			TopoDS_Shape Original_Solid = reader.OneShape();

			// Triangulation needed!
			//BRepMesh_IncrementalMesh Mesh(Original_Solid, 1);

			// Write to STL
			StlAPI_Writer stlWriter = StlAPI_Writer();
			stlWriter.ASCIIMode() = Standard_False;
			stlWriter.Write(Original_Solid, out.c_str());
			std::cout << "last check " << std::endl;
			return 1;
		} catch (Standard_Failure &error) {
			std::cout << error.GetMessageString() << std::endl;
		}
	}
	return -1;
}

int main(const int argc, char *argv[]) {
	if (argc > 1) {
		OSD::SetSignal();
		std::string in(argv[1]);
		std::string out(argv[2]);
		in.erase(std::remove(in.begin(), in.end(), '\''), in.end());
		out.erase(std::remove(out.begin(), out.end(), '\''), out.end());
		convert(in, out);
	} else {
	}
	return EXIT_SUCCESS;
}

/*
 void errorHandler(const int, const exception& error,
 const shared_ptr<Session> session) {
 std::string err_msg("Internal Server Error");
 if (session->is_open()) {
 session->close(500, err_msg, { {
 "Content-Length", std::to_string(err_msg.length()) } });
 }
 fprintf( stderr, "Custom Resource Internal Server Error\n%s", error.what());
 fprintf( stdout, "Custom Resource Internal Server Error\n%s", error.what());
 }

 void read_chunk(const shared_ptr<Session> session, const Bytes &data) {
 try {
 fwrite((Byte*)(data.data()), sizeof(Byte), static_cast< int >(data.size() - strlen("\r\n")), fp);
 } catch (exception &error) {
 cout << error.what() << endl;
 }
 session->fetch("\r\n", read_chunk_size);
 }

 void read_chunk_size(const shared_ptr<Session> session, const Bytes &data) {
 if (not data.empty()) {
 const string length(data.begin(), data.end());

 if (length not_eq "0\r\n") {
 const auto chunk_size = stoul(length, nullptr, 16) + strlen("\r\n");
 session->fetch(chunk_size, read_chunk);
 return;
 }
 }
 }

 void convertHandler(const shared_ptr<Session> session) {
 const auto request = session->get_request();

 if (request->get_header("Transfer-Encoding", String::lowercase)
 == "chunked") {
 //session->set("file", filename);
 fp = fopen(filename, "a");
 session->fetch("\r\n", read_chunk_size);
 } else if (request->has_header("Content-Length")) {
 int length = request->get_header("Content-Length", 0);

 session->fetch(length,
 [](const shared_ptr<Session> session, const Bytes&) {
 const auto request = session->get_request();
 const auto body = request->get_body();

 fprintf( stdout, "Complete body content: %.*s\n",
 static_cast<int>(body.size()), body.data());
 session->close(OK);
 });
 } else {
 session->close(BAD_REQUEST);
 }
 }

 void endpointListHandler(const shared_ptr<Session> session) {
 rapidjson::Document document;
 document.SetObject();
 rapidjson::Document::AllocatorType &allocator = document.GetAllocator();
 rapidjson::Value jsonEndpoints(rapidjson::kObjectType);
 jsonEndpoints.AddMember("/endpoint", "Lists available endpoints",
 allocator);
 jsonEndpoints.AddMember("/step2json", "Converts STEP to json", allocator);
 jsonEndpoints.AddMember("/iges2json", "Converts IGES to json", allocator);
 jsonEndpoints.AddMember("/step2stl", "Converts STEP to STL", allocator);
 jsonEndpoints.AddMember("/iges2stl", "Converts IGES to STL", allocator);
 jsonEndpoints.AddMember("/step2iges", "Converts STEP to IGES", allocator);
 document.AddMember("Available endpoint-listing", jsonEndpoints, allocator);

 rapidjson::StringBuffer buffer;
 rapidjson::PrettyWriter<rapidjson::StringBuffer> writer(buffer);
 document.Accept(writer);
 std::string endpoints(buffer.GetString());
 const auto request = session->get_request();
 int content_length = request->get_header("Content-Length", 0);
 session->fetch(content_length,
 [endpoints](const shared_ptr<Session> session, const Bytes &body) {
 const multimap<string, string> headers { { "Content-Type",
 "application/json" }, { "Content-Length",
 std::to_string(endpoints.length()) } };
 session->close(OK, endpoints, headers);
 });
 }

 int main(const int argc, char *argv[]) {
 if (argc > 1) {
 OSD::SetSignal();
 std::string in(argv[1]);
 std::string out(argv[2]);
 in.erase(std::remove(in.begin(), in.end(), '\''), in.end());
 out.erase(std::remove(out.begin(), out.end(), '\''), out.end());
 convert(in, out);
 } else {
 cout << "Registering endpoints:" << endl;
 cout << "/convert" << endl;
 auto convert = make_shared<Resource>();
 convert->set_path("/convert");
 convert->set_method_handler("POST", convertHandler);
 convert->set_error_handler(errorHandler);

 cout << "/endpoints" << endl;
 auto endpointList = make_shared<Resource>();
 endpointList->set_path("/endpoints");
 endpointList->set_method_handler("GET", endpointListHandler);
 endpointList->set_error_handler(errorHandler);

 cout << "Starting server ... ";
 auto settings = make_shared<Settings>();
 settings->set_port(1984);
 settings->set_worker_limit(4);
 settings->set_default_header("Connection", "close");

 Service service;
 service.publish(endpointList);
 service.publish(convert);
 cout << "running!" << endl;
 service.start(settings);
 }
 return EXIT_SUCCESS;
 }
 */
