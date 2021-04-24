class Calculator {
  double _height, _bodyWeight;

  get getHeight => _height;
  get getPeso => _bodyWeight;
  get determineBMI => (getPeso / (getHeight * getHeight));

  set setBodyWeight(double param) => _bodyWeight;
  set setHeight(double param) => _height;

  inputValidator(String inputedValue) {
    try {
      double.parse(inputedValue);
    } catch (NumberFormatException) {
      return inputedValue + " is not a valid number.";
    }
  }
}
