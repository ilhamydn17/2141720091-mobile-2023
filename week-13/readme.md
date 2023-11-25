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
   ```
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
   ```
   * Jelaskan perbedaan menggunakan ``listen`` dan ``await for`` (langkah 9) !
    Kedua kode tersebut memiliki logika yang sama yaitu untuk mengembalikan nilai warna secara berurutan dalam interval waktu yang telah ditentukan, perbedaan dari kedua kode tersebut, yaitu pada kode kedua menggunakan method ``listen()`` untuk mengalirkan nilai warna, sedangkan pada kode pertama aliran warna masih menggunakan loop ``await for``.

### Praktikum 2 - Stream controllers dan sinks
6. Soal 6 
-> Jelaskan maksud kode pada langkah 8 dan 10 
Kode pada langkah 8 digunakan aliran angka yang terus menerus menghasilkan angka baru. Aliran angka yang baru tersebut akan ditampilkan pada variabel ``lastNumber`` yang ada pada widget Text. Ketika tombol ditekan maka akan ditampilkan hasil angka baru dari aliran angka random yang telah dibuat. Kode pada langkah 10 adalah kode yang digunakan untuk menambahkan angka acak ke aliran angka (stream number).  
    ```
    Random random = Random();
    ```
     Baris tersebut membuat objek baru Random(), untuk menghasilkan angka acak.
    ```
    int myNum = random.nextInt(10);
    ```
    Baris tersebut digunakan untuk menentukan angka acak yang digunakan berada pada jangkauan 0 hingga 9. 
    ```
    numberStream.addNumberToSink(myNum);
    ```
    Baris tersebut akan menambahkan angka acak ke aliran angka. Maka ketika tombol ditekan, maka akan mengirimkan angka acak tersebut ke aliran angka.
-> Hasil GIF

7. Soal 7
-> Jelaskan maksud kode langkah 13 sampai 15!
Pada langkah 13-15 adalah mendemonstrasikan untuk menghandle jika terjadi adanya error pada stream. Pada langkah 13 dibuatlah functin ``addError()`` untuk membuat error pada sink stream. Ketika error tersebut telah dialirkan, maka akan dihandle oleh properti ``.onError()``, yang proses error tersebut akan membuat variabel lastNumber menjadi bernilai -1.

### Praktikum 3 - Injeksi Data ke Stream
8. Soal 8 
-> Jelaskan maksud kode langkah 1-3!
Pada kode yang ada pada langkah tersebut adalah mengubah nilai dari aliran data. 
    ```
    // kode langkah 1
    late StreamTransformer transformer;
    ```
    Pada kode tersebut mendeklarasikan varibel ``transformer`` yang bertipe ``StreamTransformer``.
    ```
    // kode langkah 2
    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10);
      },
      handleError: (error, trace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close(),
    );
    ```
    Pada langkah di atas adalah kode yang digunakan untuk membuat StreamTransformer yang akan mengubah nilai yang dihasilkan oleh aliran data, yang mana akan mengubah semua nilai numerik menjadi nilai baru yang dikalikan dengan 10. Pada kode tersebut juga digunakan error handling, dimana ketika proses pengubahan gagal akan dihasilkan nilai -1.
    ```
    // kode langkah 3
        stream.transform(transformer).listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    ```
    Pada baris tersebut memiliki konsep kerja yang sama seperti pada soal sebelumnya yaitu menerima output dari aliran data, namun pada langkah ini adalah menerima output aliran data yang sudah di ubah (transform).

### Praktikum 4 - Subscribe ke stream events
9. Soal 9 
-> Jelaskan maksud pada kode langkah 2,6,dan 8!
    ```
    // kode langkah 2 
        subscription = stream.listen((event) {
        setState(() {
            lastNumber = event;
        });
        });
        // Pada kode diatas yang dilakukan adalah mendaftarkan fungsi yang akan dipanggil setiap ada event baru di dalam stream.

        subscription.onError((error) {
            setState(() {
                lastNumber = -1;
            });
        });
        // Pada di atas, adalah mendefinisikan function yang akan dipanggil ketika ada kesalahan di stream, yang mana nilai yang dihasilkan adalah menjadi -1.

        subscription.onDone(() {
        print('onDone was called!');
        });
        // Pada kode di atas, adalah mendefinisika function ketika stream telah selesai, pesan sukses akan ditampilka di terminal/konsol debug. Ini merupakan sebuah tanda bahwa tidak ada lagi stream yang akan dialirkan.
    ```
    ```
    // kode langkah 6
    subcription.cancel()
    ```
    Pada langkah ini, adalah untuk menghancurkan widget setelah tidak digunakan(dispose), kemudian Ini adalah pemanggilan metode cancel() pada objek subscription. Objek subscription merepresentasikan langganan (subscription) terhadap suatu stream. Ketika metode cancel() dipanggil, itu berarti pembatalan langganan terhadap stream tersebut. Langganan stream dihentikan untuk mencegah memori bocor (memory leak) dan memastikan tidak ada pemanggilan setState yang terjadi setelah widget dihancurkan.
    ```
    // kode langkah 8 
     if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
    ```
    Pada langkah 8, adalah konsep yang sama seperti praktikum-praktikum sebelumnya, namun ditambahkan pengondisian, yaitu ketika stream tidak tertutup (terbuka/berjalan) maka akan ditambahkan data ke aliran, ditambahkan terlebih dahulu ke ``sink``, namun jika hasil pengondisian sebaliknya, maka akan mengubah ``lastNumber`` menjadi -1