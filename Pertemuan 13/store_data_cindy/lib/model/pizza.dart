// Konstanta untuk kunci JSON
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

  // Constructor utama
  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // Langkah 2: Perbarui fromJson() menggunakan Konstanta
  // Konstruktor pabrik (factory constructor) untuk membuat instance dari Map (JSON)
  factory Pizza.fromJson(Map<String, dynamic> json) {
    // Menggunakan konstanta (keyId, keyPizzaName, dll.)
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

  // Langkah 3: Perbarui toJson() menggunakan Konstanta
  // Metode untuk mengkonversi instance ke Map (JSON)
  Map<String, dynamic> toJson() {
    return {
      // Menggunakan konstanta (keyId, keyPizzaName, dll.)
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