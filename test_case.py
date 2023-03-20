from app import app

url = "/"

def test_index_route():
    response = app.test_client().get(url)
    assert response.status_code == 200
    assert "Hello World!" in response.text

