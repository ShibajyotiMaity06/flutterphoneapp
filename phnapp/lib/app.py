from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']= "sqlite:///phnapp.db"
app.config['SQLALCHEMY_DATABASE_MODIFICATIONS']= False
db=SQLAlchemy(app)


# class Phnapp(db.Model):
#     Number = db.column(db.Integers,primary_key=True)

    # def __repr__(self) -> str:
    #     return f"{self.Number}"


@app.route('/')
def Homepage():
    return 'This is home page'

@app.route('/contacts')
def contactpage():
    return 'this is my contacts'


if __name__ == "__main__":
    app.run(debug=True)


