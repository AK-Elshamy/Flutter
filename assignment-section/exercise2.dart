double _validateDimension(double value, String name) {
  if (value <= 0) {
    throw ArgumentError('$name must be greater than zero.');
  }

  return value;
}

class Rectangle {
  double _width;
  double _height;

  Rectangle(double width, double height)
    : _width = _validateDimension(width, 'Width'),
      _height = _validateDimension(height, 'Height');

  double get width => _width;
  double get height => _height;

  set width(double value) {
    _width = _validateDimension(value, 'Width');
  }

  set height(double value) {
    _height = _validateDimension(value, 'Height');
  }

  double area() => _width * _height;
}

void main() {
  Rectangle rectangle1 = Rectangle(42.5, 23.5);
  Rectangle rectangle2 = Rectangle(332, 253);

  print("\n---- Rectangle [1] Area Calculation ----\n");
  print(
    "Width = ${rectangle1.width}m, "
    "Height = ${rectangle1.height}m, "
    "Area = ${rectangle1.area()}m²",
  );

  print("\n---- Rectangle [2] Area Calculation ----\n");
  print(
    "Width = ${rectangle2.width}m, "
    "Height = ${rectangle2.height}m, "
    "Area = ${rectangle2.area()}m²",
  );

  print("\n---- Rectangle [1] Area Calculation After Update ----\n");
  rectangle1.width = 100;
  rectangle1.height = 50;
  print(
    "Width = ${rectangle1.width}m, "
    "Height = ${rectangle1.height}m, "
    "Area = ${rectangle1.area()}m²",
  );

  print("\n---- Rectangle [2] Area Calculation After Update ----\n");
  rectangle2.width = 200;
  rectangle2.height = 100;
  print(
    "Width = ${rectangle2.width}m, "
    "Height = ${rectangle2.height}m, "
    "Area = ${rectangle2.area()}m²",
  );

  print("\n-----------------------DONE-------------------------\n");
}
