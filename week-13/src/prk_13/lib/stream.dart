import 'dart:async';

import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController();

  void addNumberToSink(int newNum) {
    controller.sink.add(newNum);
  }

  addError() {
    controller.sink.addError('error');
  }

  close() {
    controller.close();
  }
}