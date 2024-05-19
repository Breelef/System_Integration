from fastapi import APIRouter, HTTPException, status
from pydantic import BaseModel

class Spacecraft(BaseModel):
    id: int
    name: str

spacecrafts = [
    Spacecraft(id=1, name="Apollo 13"),
    Spacecraft(id=2, name="Hubble"),
    Spacecraft(id=3, name="NiklasPåMånen"),
    Spacecraft(id=4, name="Astronaut Asmondgold"),
]

router = APIRouter()

@router.get("/api/spacecrafts", tags=["spacecrafts"], response_model=list[Spacecraft])
async def get_spacecraft():
    return spacecrafts


@router.get("/api/spacecrafts/{spacecraft_id}", tags=["spacecrafts"], response_model=Spacecraft)
async def _(spacecraft_id: int):
    for spacecraft in spacecrafts:
        if spacecraft.id == spacecraft_id:
            return spacecraft
    raise HTTPException(status_code=404, detail="Spacecraft not found");

@router.post("/api/spacecrafts", tags=["spacecrafts"], response_model=Spacecraft)
async def create_spacecraft(spacecraft: Spacecraft):
    spacecrafts.append(spacecraft)
    return spacecraft