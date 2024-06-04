from fastapi import FastAPI, Request
import uvicorn

app = FastAPI()
@app.post("/webhooks")
async def webhook(request: Request):
    payload = await request.json()
    print("Recieved payload", payload)
    return {"message": "Payload received successfully"}