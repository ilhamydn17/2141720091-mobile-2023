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
3. Soal 3 
    ```
        Stream<Color> getColors() async* {
                yield* Stream.periodic(const Duration(seconds: 1), (int t) {
                int index = t % colors.length;
                return colors[index];
            });
        }
    ```
   * Jelaskan fungsi keyword ``yield``!
    Keyword ``yield`` dalam kode tersebut digunakan untuk menghasilkan nilai secara berurutan dalam fungsi ``async*``. Dalam fungsi ``getColors()``, keyword yield digunakan untuk menghasilkan nilai warna setiap satu detik. Fungsi ini menghasilkan nilai warna dengan menggunakan fungsi ``Stream.periodic()``, yang mengembalikan aliran nilai yang dihasilkan berdasarkan jeda waktu yang ditentukan. 
   * Apa maksud isi perintah kode tersebut?!
    Function ``getColor()`` digunakan untuk menghasilkan aliran warna secara berurutan sesuai dengan interval waktu yang telah didefinisikan. Fungsi tersebut menggunakan keywors ``async*`` untuk menghasilkan nilai secara berurutan. Pada fungsi tersebut juga menggunakan`` Stream.periodic()`` untuk menghasilkan warna sesuai interval waktu, yaitu setiap 1 detik
4. Soal 4 
   [hasil screenshots]
5. Soal 5 
   * Jelaskan perbedaan menggunakan ``listen`` dan ``await for`` (langkah 9) !
    Kedua kode tersebut memiliki logika yang sama yaitu untuk mengembalikan nilai warna secara berurutan dalam interval waktu yang telah ditentukan, perbedaan dari kedua kode tersebut, yaitu pada kode kedua menggunakan method ``listen()`` untuk mengalirkan nilai warna, sedangkan pada kode pertama aliran warna masih menggunakan loop ``await for``. 