# Pemrograman Mobile Week-10
## Praktikum Plugin
### Langkah 1 - Buat Project Baru
Pada langkah ini, saya sebelunmya telah membuat projek Flutter yang serupa dangan langkah praktikum.
### Langkah 2 - Menambahkan Plugin 
Untuk menambahkan plugin yaitu dengan memerintah kode berikut di terminal CMD.
```
flutter pub add auto_size_text
```
Maka pada output terminal akan muncul proses seperti berikut.
<br>
<img src="/week-10/docs/step_1.png" width="400"> 
### Langkah 3  - Buat File Baru
Membuat file pada folder lib dan mengimpor plugin yang dibutuhkan.
```
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
```
### Langkah 4 - Tambah Widget Auto Text
```
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
```
### Langkah 5 - Membuat variabel text dan parameter di constructor
```
class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  ....
}
```
### Langkah 6 - Tambahkan widget class main
```
import 'package:flutter/material.dart';
import 'package:flutter_application_learning/red_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              child: RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            Container(
              color: Colors.greenAccent,
              width: 100,
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

```
Hasil Akhir <br>
<img src="/week-10/docs/step_2.png" width="400"> 
<br><br>

## Tugas Praktikum
#### 1. Jelaskan maksud pada langkah ke-2 di praktikum !
Pada langkah ke-2 merupakan perintah atau command dari framework flutter yang bertujuan untuk mengunduh plugin yang bernama "auto_size_text". Pub adalah nama dari package manager yang bahasa pemrograman dart, semua aksi pengunduhan plugin akan dilakukan oleh package manager tersebut saat perintah tadi dituliskan.
```
flutter pub add auto_size_text
```
#### 2. Jelaskan Maksud pada langkah ke-5 di praktikum !
Pada langkah tersebut pembuatan variabel tersebut dan juga peletakkannya pada constructor adalah bertujuan untuk meyimpan text yang berbentuk string ke widget ***auto_sized_text***. Kemudian tujuan dari langkah tersebut adalah agar lebih dinamis untuk instansiasi objek baru dengan isi teks yang berbeda, yang mana jika ingin ada instansiasi objek baru kita tinggal memasukan saja teksnya melalui constructor kelas tersebut.
```
class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);
```
#### 3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
2 widget yang ditambahkan tersebut adalah container yang masing-masing memiliki child yang berbeda. Pada Container yang pertama memiliki child yang berasal dari class ``RedTextWidget`` yang akan menerapkan widget AutoSizeText, kemudian pada Container yang e kedua dibawahnya memiliki child Text() biasa.
Kedua widget tersebut termasuk kedalam children dari widget Column().
#### 4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi !
* data : berisi konten teks yang akan ditampilkan
* group : Menyinkronkan ukuran beberapa teks yang ada di widget AutoSizeText
* maxLines : Jumlah baris maksimum opsional untuk merentangkan teks. Jika teks melebihi jumlah baris yang ditentukan, maka akan diubah ukurannya sesuai dengan batas yang ditentukan dan jika perlu dipotong sesuai dengan overflow.
* Overflow : menghandle visual jika terjadinya overflow.
* style : digunakan untuk melakukan styling pada teks yang akan digunakan.
