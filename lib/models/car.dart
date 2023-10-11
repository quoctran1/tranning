class Car {
  final String name;
  final double price;

  Car(this.name, this.price);
}

class ItemData {
  final Car data;

  String getName() => data.name;

  ItemData(
    this.data,
  );

  static List<ItemData> getListCar() {
    return [
      ItemData(Car("Mer", 1000)),
      ItemData(Car("Mazda", 2000)),
      ItemData(Car("Benz", 1500)),
      ItemData(Car("Toyota", 900)),
      ItemData(Car("Audi", 100)),
      ItemData(Car("Ferrari", 1000)),
      ItemData(Car("Vin", 2000)),
    ];
  }
}
