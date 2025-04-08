from typing import Any

from fastapi import FastAPI

app = FastAPI(
    title="My API",
    generate_unique_id_function=lambda route: f"{route.tags[0]}-{route.name}",
)


@app.get("/ping", tags=["ping"])
def ping() -> dict[str, Any]:
    """
    Ping the server.
    """
    return {"ping": "pong"}
