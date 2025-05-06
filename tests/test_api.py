from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_predict():
    response = client.get("/predict")
    assert response.status_code == 200
    assert "forecast" in response.json()
