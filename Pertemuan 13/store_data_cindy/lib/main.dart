import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'; 

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Storage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Super Secret String!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pwdController = TextEditingController();
  String myPass = '';

  final storage = const FlutterSecureStorage();
  final myKey = 'myPass'; 

  Future<void> writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
    pwdController.clear(); 
    setState(() {
      myPass = 'Value saved securely.';
    });
  }

  Future<String> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }

  @override
  void dispose() {
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                labelText: 'Enter Secret String',
                border: OutlineInputBorder(),
              ),
              obscureText: true, 
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text('Save Value'),
              onPressed: () {
                writeToSecureStorage(); 
              },
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              child: const Text('Read Value'),
              onPressed: () {
                readFromSecureStorage().then((value) {
                  setState(() {
                    myPass = 'Retrieved: $value';
                  });
                });
              },
            ),
            const SizedBox(height: 40),

            Text(
              myPass,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}