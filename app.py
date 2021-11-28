import serverless_wsgi
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
	return "<p>Hello, World!</p>"

def handler(event, context):
	return serverless_wsgi.handle_request(app, event, context)
