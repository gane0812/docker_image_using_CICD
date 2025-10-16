#!/usr/bin/env python3

from http.server import BaseHTTPRequestHandler, HTTPServer

class HelloHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        message = "<h1>Hello, This is running in a container </h1>"
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(message.encode())

if __name__ == "__main__":
    server_address = ("0.0.0.0", 8080)
    httpd = HTTPServer(server_address, HelloHandler)
    print("✅ Server running on http://localhost:8080 ...")
    httpd.serve_forever()