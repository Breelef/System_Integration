from fastapi import FastAPI
import requests

app = FastAPI()
#my_dict = {"message": [1,2,3,4,5]}
#print(my_dict["message"])
@app.get("/fastapidata")
def senddata():
    return {"data": [1, 2, 3, 4, 5]}

@app.get("/requestExpress")
def fetchdata():
    r = requests.get("http://127.0.0.1:8080/expressData")
    return {"data": r.json()}
