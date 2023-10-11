class GenericTypeExample{

  List<FlightTicket> flights = [
    FlightTicket(
      image: "Assets.images.airAsia.path",
      flightNo: 'NNS24',
      departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
      arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
      price: 215,
    ),
    FlightTicket(
      image: "Assets.images.citilink.path",
      flightNo: 'ALT03',
      departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
      arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
      price: 249,
    ),
    FlightTicket(
      image: "Assets.images.garudaIndo.path",
      flightNo: 'FLG15',
      departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
      arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
      price: 253,
    ),
    FlightTicket(
      image: "Assets.images.batikAir.path",
      flightNo: 'HTL09',
      departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
      arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
      price: 227,
    ),
    FlightTicket(
      image: "Assets.images.lionAir.path",
      flightNo: 'LNR14',
      departureDate: DateTime.fromMillisecondsSinceEpoch(1697840460),
      arrivalDate: DateTime.fromMicrosecondsSinceEpoch(1697852580),
      price: 124,
    ),
  ];

  List<CarTicket> cars = [
    CarTicket(
      imageName: "Assets.images.airAsia.path",
      carName: 'NNS24',
      carPrice: 21,
    ),  CarTicket(
      imageName: "Assets.images.airAsia.path",
      carName: 'NNS24',
      carPrice: 215,
    ),  CarTicket(
      imageName: "Assets.images.airAsia.path",
      carName: 'NNS24',
      carPrice: 915,
    ),  CarTicket(
      imageName: "Assets.images.airAsia.path",
      carName: 'NNS24',
      carPrice: 615,
    ),

  ];

}

int getMaxPrice<T extends FlightTicket>(List<T> tickets) {
  int maxPrice = 0;
  for (T ticket in tickets) {
    if (ticket.price > maxPrice) {
      maxPrice = ticket.price;
    }
  }
  return maxPrice;
}

// int getMaxPriceOriginal<T>(List<T> tickets) {
//   int maxPrice = 0;
//   for (T ticket in tickets) {
//     if (ticket.price > maxPrice) {
//       maxPrice = ticket.price;
//     }
//   }
//   return maxPrice;
// }

int getMaxPriceOriginal(List<FlightTicket> tickets) {
  int maxPrice = 0;
  for (FlightTicket ticket in tickets) {
    if (ticket.price > maxPrice) {
      maxPrice = ticket.price;
    }
  }
  return maxPrice;
}

class FlightTicket {
  final String flightNo, image;
  final DateTime? departureDate, arrivalDate;
  final int price;

  FlightTicket(
      {required this.flightNo,
        required this.image,
        this.departureDate,
        this.arrivalDate,
        required this.price});
}

class CarTicket /*extends FlightTicket*/{
  final String carName,imageName;
  final int carPrice;

  CarTicket({required this.carName,required this.imageName,required this.carPrice,})
      /*:super(flightNo: carName,image: imageName,price: carPrice)*/;

}
