from fastapi import FastAPI

app = FastAPI()

from routers import spacecraft_router
app.include_router(spacecraft_router)

import json
@app.on_event("startup")
def save_openapi_json():
    openapi_data = app.openapi()
    with open("openapi.json", "w") as file:
        json.dump(openapi_data, file)
