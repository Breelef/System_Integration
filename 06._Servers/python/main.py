from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def root():
    return { "message": "Hello World!" }

@app.get('/firstRoute')
def root():
    return { "message": "Hello This is the first route!" }