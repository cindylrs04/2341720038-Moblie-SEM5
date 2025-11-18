import 'package:flutter/material.dart';
import 'stream.dart'; // Langkah 4: Import stream.dart
import 'dart:math'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Langkah 5: Tambah variabel
  late Stream<int> stream;

  // Langkah 6: Edit initState()
  @override
  void initState() {
    super.initState();
    stream = NumberStream().getNumbers();
  }

  // Langkah 7: Edit method build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: StreamBuilder(
          stream: stream,
          initialData: 0, 
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple
                ),
              );
            }
            
            else if (snapshot.hasError) {
              return const Text('Error!');
            }
            
            else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}