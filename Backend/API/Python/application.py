from flask import Flask, request, jsonify
from flask_json import FlaskJSON, JsonError, json_response, as_json
from flask_sqlalchemy import SQLAlchemy

# print a nice greeting.
def say_hello(username = "World"):
    return 'Hello %s!' % username

# EB looks for an 'application' callable by default.
application = Flask(__name__)
Json = FlaskJSON(application)

@application.route("/")
def hello():
    return json_response(text = "Herzlich Willkommen zur DonateYourWork API! :)")


@application.route("/job", methods=["POST","GET","DELETE"])
def job():
    _input = request.get_json()
    if request.method == "GET":
        """TODO: get job from DB"""
        _id = request.args.get("id")
        title = request.args.get("title")   
        employer = request.args.get("employer")
        donation = request.args.get("donation")
        job = {"id": _id, "title": title, "employer": employer, "donation": donation}
        return jsonify(job)
    elif request.method == "POST":
        """TODO: Save job to DB"""
        title = _input["title"]
        employer = _input["employer"]
        donation = _input["donation"]
        return "It works:{},{},{}".format(title,employer, donation)
    elif request.method == "DELETE":
        """TODO: Delete job from DB"""
        _id = _input["id"]
        return


@application.route("/user", methods=["POST","GET", "DELETE"])
def user():
    _input = request.get_json()
    if request.method == "GET":
        """TODO: get user from DB"""
        _id = request.args.get("id")
        username = request.args.get("username")
        email = request.args.get("email")
        description = request.args.get("description")
        location = request.args.get("location")
        user = {"id":_id, "username": username, "email": username, "description": description, "location": location}
        return jsonify(user)
    elif request.method == "POST":
        """TODO: Save user to DB"""
        _id = usersList.length()+1 #set id equal to next possible int
        username = _input["username"]
        email = _input["email"]
        description = _input["description"]
        location = _input["location"]
        return "It works: {}, {}, {}, {}".format(username,email,description,location)
    elif request.method =="DELETE":
        """TODO: Delete user from DB"""
        _id = _input["id"]
        return


# run the app.
if __name__ == "__main__":
    # Setting debug to True enables debug output. This line should be
    # removed before deploying a production app.
    application.debug = True
    application.run()