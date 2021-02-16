from tensorflow import keras
from flask import Flask, request
from flask_restful import Resource,reqparse, Api
app = Flask(__name__)
api = Api(app)

def doPredict(data):
    respond = []
    for i in range(len(data)):

        if (i==0 or i==1) and len(data)==11:
            if i==0:
                respond.append(int(data[i]+data[i+1]))
        else:
            respond.append(int(data[i]))

    model = keras.models.load_model('model')
    y = model.predict([respond])
    y = round(y[0][0]*100,2) #for percentage
    return str(y)+"%"

class ann_diabetes(Resource):
    def get(self,data):
        return doPredict(data)
api.add_resource(ann_diabetes,'/<string:data>')
if __name__ == '__main__':
    app.run(debug=True)
