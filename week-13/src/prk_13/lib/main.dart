import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ilham Yudantyo - [week13]',
        color: Colors.cyan,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
          useMaterial3: true,
        ),
        home: const StreamHomePage());
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream cs;

  // praktikum 3
  late StreamTransformer transformer;

  // praktikum 4
  late StreamSubscription subscription;

  // Praktikum - 2
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  void changeColor() async {
    // Prak 1
    // await for (var eventColor in cs.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    cs.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  // Praktikum - 1
  // @override
  // void initState() {
  //   super.initState();
  //   cs = ColorStream();
  //   changeColor();
  // }

  // Praktikum - 2
  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    // Praktikum 4
    subscription = stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    subscription.onDone(() {
      print('onDone was called!');
    });

    // praktikum 3
    // transformer = StreamTransformer<int, int>.fromHandlers(
    //   handleData: (value, sink) {
    //     sink.add(value * 10);
    //   },
    //   handleError: (error, trace, sink) {
    //     sink.add(-1);
    //   },
    //   handleDone: (sink) => sink.close(),
    // );
    // stream.transform(transformer).listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    // Praktikum 2
    // stream.listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    super.initState();
  }

  // Praktikum 4
  void stopStream() {
    numberStreamController.close();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);

    // praktikum 4
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }

    // numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('[Ilham Ydn] Stream'),
  //     ),
  //     body: Container(
  //       decoration: BoxDecoration(color: bgColor),
  //     ),
  //   );
  // }

  // Praktikum - 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('[Ilham Ydn] Stream'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                lastNumber.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                  onPressed: () => addRandomNumber(),
                  child: const Text('New random number')),
              ElevatedButton(
                  onPressed: () => stopStream(),
                  child: const Text('Stop Subcription'))
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose

    // praktiukm 4
    subscription.cancel();

    numberStreamController.close();
    super.dispose();
  }
}
