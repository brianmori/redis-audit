import pytest


@pytest.mark.unit
def test_hello_world() -> None:
    message = "Hello, World!"
    assert message == "Hello, World!"
