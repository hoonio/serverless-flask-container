import serverless_wsgi
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
	return "<p>Hello, World!</p>"

@app.route("/dev")
def devs():
	return "Dev!"

def handler(event, context):
	return serverless_wsgi.handle_request(app, event, context)
