class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Corolla', 2020);
  myCar.printProperties();
}


class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }

  void makeNoise() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Corolla', 2020);
  myCar.printProperties();
  myCar.makeNoise(); // This will print "Vroom Vroom"
}


class ElectricCar extends Car {
  double batteryLife; // Battery life in hours

  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);

  @override
  void printProperties() {
    super.printProperties(); // Call the base class method
    print('Battery Life: $batteryLife hours');
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model 3', 2019, 250.0);
  myElectricCar.printProperties();
  myElectricCar.makeNoise(); // Inherited method, will print "Vroom Vroom"
}
