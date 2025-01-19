class Car:
    
    def __init__(self, make: str, model: str, year: int) -> None:
        self._make = make
        self._model = model
        self._year = year
        self.odometer_reading = 0

    @property
    def make(self) -> str:
        return self._make

    @make.setter
    def make(self, make: str) -> None: 
        self._make = make

    @property
    def model(self) -> str:
        return self._model

    @model.setter0
    def model(self, model: str) -> None:
        self._model = model

    @property
    def year(self) -> int:
        return self._year

    @year.setter
    def year(self, year: int) -> None:
        self._year = year