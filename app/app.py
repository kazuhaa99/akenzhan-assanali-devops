import os
from http.server import HTTPServer, BaseHTTPRequestHandler

name = os.getenv("STUDENT_NAME", "Assanali")
surname = os.getenv("STUDENT_SURNAME", "Akenzhan")
group = os.getenv("STUDENT_GROUP", "IT2-2313")
student_id = os.getenv("STUDENT_ID", "38330")
port = int(os.getenv("APP_PORT", "8080"))

info = f"""================================
DevOps Student Application
================================

Name: {name}
Surname: {surname}
Group: {group}
Student ID: {student_id}

Application is running successfully!
"""


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/plain; charset=utf-8")
        self.end_headers()
        self.wfile.write(info.encode())


if __name__ == "__main__":
    print(info, flush=True)
    print(f"Listening on port {port}", flush=True)
    HTTPServer(("0.0.0.0", port), Handler).serve_forever()
