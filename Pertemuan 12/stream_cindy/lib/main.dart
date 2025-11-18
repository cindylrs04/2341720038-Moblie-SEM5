import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:math'; 
import 'dart:async'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Controller App',
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
  int lastNumber = 0;
  late NumberStream numberStream;
  late StreamController<int> streamController;
  late Stream<int> stream;
  late StreamTransformer<int, int> transformer;
  
  late StreamSubscription<int> subscription;
  late StreamSubscription<int> subscription2;

  String values = ''; 

  void stopStream() {
    subscription.cancel(); 
    subscription2.cancel(); 
    setState(() {
      lastNumber = -1; 
      values = 'Stream Stopped. \nLast error: -1';
    });
  }

  void startStream() {
  }

  void addRandomNumber() {
    int myNum = Random().nextInt(10);
    numberStream.addNumberToSink(myNum);
  }

  // Langkah 4: Set broadcast stream
  @override
  void initState() {
    numberStream = NumberStream();
    streamController = numberStream.controller;
    
    stream = streamController.stream.asBroadcastStream(); 

    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (int value, EventSink<int> sink) {
        sink.add(value * 10);
      },
      handleError: (Object error, StackTrace trace, EventSink<int> sink) {
        sink.add(-1);
      },
      handleDone: (EventSink<int> sink) => sink.close(),
    );

    subscription = stream.transform(transformer).listen((event) {
    });

    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event-$event-';
      });
    });
    
    super.initState();
  }
  
  @override
  void dispose() {
    numberStream.close();
    subscription.cancel(); 
    subscription2.cancel();
    super.dispose();
  }
  
  // Langkah 5: Edit method build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'), 
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              values,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: addRandomNumber,
              child: const Text('New Random Number'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: stopStream,
                  child: const Text('Stop Stream'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}