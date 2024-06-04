from fastapi import FastAPI, HTTPException, Request
from pydantic import BaseModel, Field
from enum import Enum
from typing import Dict
import httpx
import json

class EventType(str, Enum):
    payment_received = "payment received"
    payment_processed = "payment processed"
    invoice_processing = "invoice processing"
    invoice_completed = "invoice completed"

class Webhook(BaseModel):
    webhook_url: str

class Event(BaseModel):
    event_type: str
    data: dict

app = FastAPI()

webhooks = []


@app.post("/register")
async def register_webhook(webhook: Webhook):
    if webhook.webhook_url not in webhooks:
        webhooks.append(webhook.webhook_url)
        return {"message": "Webhook registered successfully"}
    else:
        return {"message": "Webhook already registered"}

@app.post("/unregister")
async def unregister_webhook(webhook: Webhook):
    if webhook.webhook_url in webhooks:
        webhooks.remove(webhook.webhook_url)
        return {"message": "Webhook unregistered successfully"}
    else:
        return {"message": "Webhook not found"}

@app.get("/print")
async def print_webhooks():
    print(webhooks)
@app.post("/trigger_event")
async def trigger_event(event: Event):
    client = httpx.AsyncClient()
    errors = []
    for webhook in webhooks:
        try:
            await client.post(webhook, json=event.dict())
        except httpx.RequestError as e:
            errors.append({"webhook": webhook, "error": str(e)})

    await client.aclose()
    if errors:
        return {"errors": errors}
    return {"message": "Event notifications sent to all registered webhooks"}
