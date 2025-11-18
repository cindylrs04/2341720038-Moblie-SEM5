import 'dart:async'; 
import 'dart:math';   

// Langkah 2: Buat class NumberStream
class NumberStream {
  
  // Langkah 3: Tambah kode getNumbers()
  Stream<int> getNumbers() async* {
    var random = Random();
    
    yield* Stream.periodic(
      const Duration(seconds: 1),
      (index) {
        return random.nextInt(100); 
      },
    );
  }
}