from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']= "sqlite:///phnapp.db"
app.config['SQLALCHEMY_DATABASE_MODIFICATIONS']= False
db=SQLAlchemy(app)


@app.route('/')
def Homepage():
    return 'This is home page'

@app.route('/contacts')
def contactpage():
    return 'this is my contacts'

def test():
    if request.method == "GET":
        return jsonify({"request":"Get Request Called"})


if __name__ == "__main__":
    app.run(debug=True)


