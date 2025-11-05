import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  // Inisialisasi dengan warna default agar tidak null
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Red'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade700),
              onPressed: () {
                color = Colors.red.shade700;
                Navigator.pop(context, color); // Kirim warna kembali ke layar pertama
              },
            ),
            ElevatedButton(
              child: const Text('Green'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade700),
              onPressed: () {
                color = Colors.green.shade700;
                Navigator.pop(context, color); // Kirim warna kembali ke layar pertama
              },
            ),
            ElevatedButton(
              child: const Text('Blue'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700),
              onPressed: () {
                color = Colors.blue.shade700;
                Navigator.pop(context, color); // Kirim warna kembali ke layar pertama
              },
            ),
          ],
        ),
      ),
    );
  }
}
