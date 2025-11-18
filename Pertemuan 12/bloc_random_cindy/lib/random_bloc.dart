import 'dart:async'; 
import 'dart:math';   

// Langkah 3: Buat class RandomNumberBloc
class RandomNumberBloc {
  
  // Langkah 4: Buat variabel StreamController
  final _randomGeneratorController = StreamController<int>();
  
  Stream<int> get randomStream => _randomGeneratorController.stream;

  Sink<int> get inputSink => _randomGeneratorController.sink;

  RandomNumberBloc() {
    // Langkah 5: Buat Constructor
    inputSink.add(0); 
  }

  void generateRandomNumber() {
    final random = Random();
    int randomNumber = random.nextInt(10); 
    _randomGeneratorController.sink.add(randomNumber); 
  }

  // Langkah 6: Buat method dispose()
  void dispose() {
    _randomGeneratorController.close();
  }
}