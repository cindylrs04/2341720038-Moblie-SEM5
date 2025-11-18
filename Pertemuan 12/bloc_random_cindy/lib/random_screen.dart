import 'package:flutter/material.dart';
import 'random_bloc.dart'; 

// Langkah 10: Buat StatefulWidget RandomScreen
class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  // Langkah 11: Buat variabel
  late RandomNumberBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = RandomNumberBloc();
  }

  // Langkah 12: Buat method dispose()
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  // Langkah 13: Edit method build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number BLoC'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _bloc.randomStream,
          initialData: 0,
          builder: (context, snapshot) {
            String displayValue = snapshot.hasData 
                ? snapshot.data.toString() 
                : snapshot.hasError ? 'Error!' : '0';

            return Text(
              displayValue,
              style: const TextStyle(fontSize: 90),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _bloc.generateRandomNumber(); 
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}