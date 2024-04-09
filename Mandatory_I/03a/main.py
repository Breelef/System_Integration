from fastapi import FastAPI
import requests

app = FastAPI()

@app.get("/XML")
def readXml():
    r = requests.get("http://127.0.0.1:8080/getXML")
    return {"data": r.json()}

@app.get("/YAML")
def readYAML():
    r = requests.get("http://127.0.0.1:8080/getYAML")
    return {"data": r.json()}

@app.get("/JSON")
def readJSON():
    r = requests.get("http://127.0.0.1:8080/getJSON")
    return {"data": r.json()}

@app.get("/TXT")
def readTXT():
    r = requests.get("http://127.0.0.1:8080/getTXT")
    return {"data": r.json()}

@app.get("/CSV")
def readCSV():
    r = requests.get("http://127.0.0.1:8080/getCSV")
    return {"data": r.json()}