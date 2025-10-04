import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
  Item(name: 'Sugar', price: 5000,  photo: 'images/sugar.jpg', stock: 10, rating: 4.5),
  // Item(name: 'Salt',  price: 2000,  photo: 'images/salt.jpg',  stock: 20, rating: 4.0),
  Item(name: 'Coffe', price: 15000, photo: 'images/coffe.jpg', stock: 5,  rating: 4.8),
  Item(name: 'Tea',   price: 12000, photo: 'images/tea.jpg',   stock: 8,  rating: 4.3),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace Cindy'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(
                  item: item,
                  onTap: () => context.push('/item', extra: item),
                );
              },
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}