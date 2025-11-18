import 'dart:async'; 
import 'package:flutter/material.dart'; 

class NumberStream {
    
    final StreamController<int> controller = StreamController<int>();
    
    void addNumberToSink(int newNumber) {
        controller.sink.add(newNumber);
    }

    // Langkah 13: Tambahkan method addError()
    void addError() {
        controller.sink.addError('error');
    }

    void close() {
        controller.close();
    }
}