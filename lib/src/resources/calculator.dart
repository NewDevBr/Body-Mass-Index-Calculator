class Calculator {
  double _height, _bodyWeight;

  get getHeight => _height;
  get getPeso => _bodyWeight;
  get determineBMI => (getPeso / (getHeight * getHeight));
  set setBodyWeight(double param) => _bodyWeight = param;
  set setHeight(double param) => _height = param;

  classify(double bmi) {
    if (bmi < 18.5) {
      return "Peso abaixo do saudável";
    } else {
      if (bmi <= 24.9) {
        return "Peso normal";
      } else {
        if (bmi <= 29.9) {
          return "Excesso de peso";
        } else {
          if (bmi <= 34.9) {
            return "Obesidade de classe 1";
          } else {
            if (bmi < 39.9) {
              return "Obesidade de classe 2";
            } else {
              return "Obesidade de classe 3";
            }
          }
        }
      }
    }
  }

  inputValidator(String typedValue) {
    if (typedValue.isEmpty) {
      return "Please, type a required information";
    } else {
      if (double.tryParse(typedValue) == null) {
        return "The value typed is not valid";
      }
    }
  }
}
