import allure

from app import calculator

@allure.suite("Calculator")
class TestCalculator:

    @allure.title("Add")
    def test_add(self):
        assert calculator.add(1, 2) == 3

    @allure.title("Substract")
    def test_subtract(self):
        assert calculator.substract(5,4) == 1