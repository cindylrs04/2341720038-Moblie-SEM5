import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DefaultAssetBundle;
import 'dart:convert';
import './model/pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo Cindy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<Pizza> myPizzas = [];

  // Langkah 24: Buat Fungsi Konversi JSON String
  String convertToJson(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => pizza.toJson()).toList());
  }

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('test/assets/pizzalist.json');
        
    List<dynamic> pizzaMapList = jsonDecode(myString);

    List<Pizza> pizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza pizzaPizza = Pizza.fromJson(pizza);
      pizzas.add(pizzaPizza);
    }
    
    // Langkah 25: Tampilkan Output JSON di Konsol (Serialization)
    String jsonOutput = convertToJson(pizzas);
    print(jsonOutput);

    // Langkah 25: return myPizzas
    return pizzas;
  }
  
  @override
  void initState() {
    super.initState();
    readJsonFile().then((value) {
      setState(() {
        myPizzas = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON'),
      ),
      body: ListView.builder(
        itemCount: myPizzas.length,
        itemBuilder: (context, index) {
          if (myPizzas.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          
          return ListTile(
            title: Text(myPizzas[index].pizzaName),
            subtitle: Text('${myPizzas[index].description} - € ${myPizzas[index].price}'), 
          );
        },
      ),
    );
  }
}