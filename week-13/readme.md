# Praktikum 13 - Flutter Stream
### Praktikum 1 - Dart Stream
1. Soal 1
   ```
    return MaterialApp(
      // set title
      title: 'Ilham Yudantyo - [week13]',
      theme: ThemeData(
        // set color theme
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
   ```
2. Soal 2 
    ```
    import 'package:flutter/material.dart';

    class ColorStream {
        // add colors 
        final List<Color> colors = [
            Colors.blueGrey,
            Colors.amber,
            Colors.deepPurple,
            Colors.lightBlue,
            Colors.teal,
        ];
    }
    ```