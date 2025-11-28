const keyId = 'id';
const keyPizzaName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    final id = int.tryParse(json[keyId].toString()) ?? 0;
    final pizzaName = json[keyPizzaName] != null
        ? json[keyPizzaName].toString()
        : 'No name';
    final description = json[keyDescription] != null
        ? json[keyDescription].toString()
        : '';
    final price =
        double.tryParse(json[keyPrice].toString()) ?? 0;
    final imageUrl =
        json[keyImage] != null ? json[keyImage].toString() : '';

    return Pizza(
      id: id,
      pizzaName: pizzaName,
      description: description,
      price: price,
      imageUrl: imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyPizzaName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }

  @override
  String toString() {
    return 'Pizza{id: $id, pizzaName: $pizzaName, price: $price}';
  }
}