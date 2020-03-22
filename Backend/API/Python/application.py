from flask import Flask, request
from flask_json import FlaskJSON, JsonError, json_response, as_json

# print a nice greeting.
def say_hello(username = "World"):
    return 'Hello %s!' % username

# EB looks for an 'application' callable by default.
application = Flask(__name__)
Json = FlaskJSON(application)

@application.route("/")
def hello():
    return json_response(text = "Herzlich Willkommen zur DonateYourWork API! :)")

@application.route("/job", methods=["POST","GET"])
def job():
    if request.method == "GET":
        title = request.args.get("title")
        employer = request.args.get("employer")
        donation = request.args.get("donation")
        return "It worked"
    elif request.method == "POST":
        return "It works"

@application.route("/user", methods=["GET"])
def user():
    username = request.args.get("username")
    email = request.args.get("email")
    description = request.args.get("description")
    location = request.args.get("location")
    return "user"

# run the app.
if __name__ == "__main__":
    # Setting debug to True enables debug output. This line should be
    # removed before deploying a production app.
    application.debug = True
    application.run()