class DataModel {
  final String name;
  final String description;
  final String location;
  final String img;
  final int price;
  final int rating;
  final int people;

  DataModel(
      {required this.name,
      required this.description,
      required this.location,
      required this.img,
      required this.price,
      required this.rating,
      required this.people});

  factory DataModel.fromJson(Map<String, dynamic> jsonFile) {
    return DataModel(
        name: jsonFile['name'],
        description: jsonFile['description'],
        location: jsonFile['location'],
        img: jsonFile['img'],
        price: jsonFile['price'],
        rating: jsonFile['stars'],
        people: jsonFile['people']);
  }
}
