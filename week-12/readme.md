# Praktikum 12 - Flutter Asynchronous

### Praktikum 1 - Mengunduh Data dari Web Service API
#### Pertanyaan Soal 
* Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
  Jawaban:
  ```
  onPressed: () {
                  setState(() => {});
                  getData().then((value) {
                    result = value.body.toString().substring(0, 450);
                    setState(() {});
                  }).catchError((_) {
                    result = 'An error occured';
                    setState(() {});
                  });
                },
  ```
  Pada kode di atas adalah memberikan aksi ketika tombol ElevatedButton ditekan. Saat tombol ditekan, maka akan memanggil fungsi ``getData()``, mengembalikan Future yang berisi data dari sumber endpoint API web yang telah dituju. Jika proses pengambilan berhasil, maka datanya akan disimpan di variabel ``result`` yang akan ditampilkan sebagai  teks oleh widget. Namun, apabila proses pengambilan gagal, maka Future akan menangkap nilai error tersebut (cathError) yang juga akan disimpan di variabel result. <br>
  ```
  result = value.body.toString().substring(0, 450);
  ```
  Pada baris kode tersebut terdapat function ``substring(0, 450)``, yang mana artinya kode tersebut akan menyimpan nilai data yang diambil dari Future dan disimpan di variabel ``result``, kemudian dipotong menjadi 450 karakter pertama, **0** berarti potongan string akan dimulai dari awal string, **450** berarti potongan string akan berakhir setelah 450 karakter.<br>
* Hasil kode <br>
  ![prak1](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/109494b1-d536-4e26-a099-98c0701ec053)

### Praktikum 2 - Await/Async untuk menghindari callbacks
#### Pertanyaan Soal 
* Jelaskan maksud kode langkah 1 dan 2 tersebut!
  ```
  // Kode langkah 1
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
  ```
  Pada kode di atas didefinisikan 3 fungsi asinkron, yang mana fungsi asinkron adalah fungsi yang dapat ditunda menunggu hingga proses selesai. Dari masing-masing 3 fungsi tersebut akan mengembalikan angka tertentu yang dedefinisikan masing-masing fungsi, waktu tunggu dari ketiga fungsi tersebut adalah 3 detik.<br>
  ```
  // Kode langkah 2
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }
  ```
  Kode pada langkah 2, yaitu mendefinsikan function ``count`` yang akan menghitung total dari nilai yang dikembalikan dari ketiga function asinkron yang telah didefinisikan pada langkah 1, dan function ``count`` tersebut juga akan berjalan secara asinkron. Fungsi tersebut tidak akan tersedia hingga ketiga function yang ada pada langkah 1 selesai dijalankan. <br>
  ```
  setState(() {
  result = total.toString();
  });
  ```
  Pada kode di atas, akan memperbarui status widget, yang mana nilai yang diperbarui tersebut berasal dari nilai variabel ``total``.
* Hasil Kode <br>
  ![prak2](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/980044cc-af39-49a8-8d55-0c316b43f629)


### Praktikum 3 - Menggunakan Completer di Future
#### Pertanyaan Soal 
* Jelaskan maksud kode langkah 2 tersebut!
  ```
  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds : 5));
    completer.complete(42);
  }
  ```
  Pada kode di atas, diawali dengan mendeklarasikan variabel ``completer`` dengan tipe dari class ``Completer``. Kata kunci late berarti bahwa variabel akan digunakan nantinya. Selanjutnya, dideklarasikan function Future ``getNumber()`` yang akan mengembalikan objek Future. Pada fungsi tersebut membuat objek Completer kemudian memanggil function ``calculate()``, ``complete.future`` merupakan properti dari objek ``Complementer``, yang akan mengembalikan objek Future yang terkait dengan objek ``Completer``.
  Pada function ``calculate()`` akan menyelesaikan objek ``completer`` dengan mengisi nilai 42 ke dalamnya setelah menunggu selama 5 detik.
* Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
  ```
  // kode pada langkah 5-6
   Future calculate() async {
      try {
        await Future.delayed(const Duration(seconds: 5));
        completer.complete(42);
      } catch (_) {
        completer.completeError({});
      }
    }
  ```
  Perbedaan kode pada langkah 2 dan 5-6 adalah, pada langkah 5-6 ditambahkan error handling ``try..catch..`` yang akan menangkap error yang dihasilkan jika Future gagal menjalankan tugasnya.
* Hasil kode <br>
  ![prak3-4](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/5f258a08-19f4-4f17-a827-99d9cb3d5f78)

### Praktikum 4 - Memanggil Future secara parallel
#### Pertanyaan Soal 
* Jelaskan maksud perbedaan kode langkah 1 dan 4
  ```
  // kode langkah 1
    void returnFG() {
      FutureGroup<int> fg = FutureGroup<int>();
      fg.add(returnOneAsync());
      fg.add(returnTwoAsync());
      fg.add(returnThreeAsync());
      fg.close();
      fg.future.then((List<int> value) {
        int total = 0;
        for (var element in value) {
          total += element;
        }
        setState(() {
          result = total.toString();
        });
      });
    }
  ```
  ```
  // kode langkah 4
  void returnFG() {
    final futures = Future.wait<int>(
        [returnOneAsync(), returnTwoAsync(), returnThreeAsync()]);
    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }
  ```
  Perbedaan yang ada pada kode 1 dan 4 adalah pada langkah 1 menggunakan class ``FutureGroup`` dengan memasukkan anggota Future dengan function ``add()``, sedangkan pada langkah 4 konsep kerja sama seperti langkah 1 namun menggunakan function ``wait()`` untuk menunggu beberapa operasi asinkron sekaligus dan mengumpulkan hasilnya.
* Hasil kode <br>
  ![prak3-4](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/ca9a43d1-3ba4-4905-bfbc-356a283c7d92)

### Praktikum 5 - Menangani respon error pada asinkron
#### Pertanyaan Soal 
* Jelaskan perbedaan kode langkah 1 dan 4!
  ```
  // langkah 1
    Future returnError() async {
      await Future.delayed(const Duration(seconds: 2));
      throw Exception('Something terible happen');
    }
  ```
  ```
  // langkah 4
    Future handleError() async {
      try {
        await returnError();
      } catch (error) {
        setState(() {
          result = error.toString();
        });
      } finally {
        print('complete');
      }
    }
  ```
  Perbedaan kode dari kedua langkah tersebut adalah pada langkah 1 error handling hanya dilakukan dengan ``try..catch``, sehingga jika terjadi error maka program akan berhenti dan menangkap error yang ada, sedangkan pada langkah 2 error handling dilakukan dengan  ``try..catch..finally..`` yang mana ketika terjadi error, error akan ditangkap dan ditampilkan namun program akan tetap dijalankan.
* Hasil kode <br>
![prak5](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/4573c1cc-0c25-4370-9f44-5c4960ea5912)

### Praktikum 6 - Menggunakan future dengan statefulWidget
#### Pertanyaan Soal
  ```
  // geolocation.dart
  import 'package:flutter/material.dart';
  import 'package:geolocator/geolocator.dart';
  
  class LocationScreen extends StatefulWidget {
    const LocationScreen({super.key});
  
    @override
    State<LocationScreen> createState() => _LocationScreenState();
  }
  
  class _LocationScreenState extends State<LocationScreen> {
    String myPosition = '';
  
    @override
    void initState() {
      super.initState();
      getPostion().then((Position myPos) {
        myPosition =
            'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
        setState(() {
          myPosition = myPosition;
        });
      });
    }
  
    @override
    Widget build(BuildContext context) {
      final myWidget =
          myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
  
      return Scaffold(
        appBar: AppBar(
          title: const Text("Ilham Yudantyo's Location"),
        ),
        body: Center(
          child: myWidget,
        )
      );
    }
  
    Future<Position> getPostion() async {
      await Geolocator.requestPermission();
      await Geolocator.isLocationServiceEnabled();
      Position? position = await Geolocator.getCurrentPosition();
  
      return position;
    }
}

  ```
* Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
  Geolocator tidak dapat berjalan di browser karena perbedaan infrastruktur dan dukungan platform antara aplikasi mobile dan aplikasi web. Geolocator menggunakan plugin native yang berinteraksi dengan API lokasi perangkat secara langsung.
* Hasil kode <br>
  ![prak6-7](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/a7e3853f-f739-49c9-8813-a64458e38f94)

### Praktikum 7 - Manajemen future dengan future builder
#### Pertanyaan Soal
* Perubahan kode pada method build
  ```
   @override
    Widget build(BuildContext context) {
      final myWidget = myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
      return Scaffold(
        appBar: AppBar(
          title: const Text("Ilham Yudantyo's Location"),
        ),
        body: Center(
          child: FutureBuilder(
              future: position,
              builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Text('Something terrible happened');
                  }
                  return Text(snapshot.data.toString());
                } else {
                  return const Text('');
                }
              }),
        ),
      );
    }
  ```
* Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
  Terdapat beberapa sedikit perubahan tampilan. Setelah langkah 4 dilakukan, tampilan ketika koneksi internet tidak ada adalah kosong, karena pengondisian yang menampilkan text kosong ketika internet tidak diaktifkan ketika geolocator digunakan. Kemudian setelah langkah 5, ditambahkan handling error, yang mana ketika tidak terkoneksi dengan internet atau kegagalan fungsi dari geolocator akan menampilkan pesan error "Something terrible happened".

### Praktikum 8 - Navigation route dengan Future Function
#### Pertanyaan Soal
* Kode Praktikum 8
  ```
  // navigation first page
  import 'package:flutter/material.dart';
  import 'navigation_second.dart';
  
  class NavigationFirst extends StatefulWidget {
    const NavigationFirst({super.key});
  
    @override
    State<NavigationFirst> createState() => _NavigationFirstState();
  }
  
  class _NavigationFirstState extends State<NavigationFirst> {
    Color color = Colors.blue.shade700;
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: const Text("Ilham Yudan's Navigation First Screen"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  _navigateAndGetColor(context);
                },
                child: const Text('change Color'))),
      );
    }
  
    Future _navigateAndGetColor(BuildContext context) async {
      color = await Navigator.push(
              context,  
              MaterialPageRoute(
                  builder: (context) => const NavigationSecond())) ??
          Colors.blue;
      setState(() {});
    }
  }
  ```
  ```
  // navigation second page
  import 'package:flutter/material.dart';

  class NavigationSecond extends StatefulWidget {
    const NavigationSecond({super.key});
  
    @override
    State<NavigationSecond> createState() => _NavigationSecondState();
  }
  
  class _NavigationSecondState extends State<NavigationSecond> {
    @override
    Widget build(BuildContext context) {
      Color color;
  
      return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Second Screen'),
        ),
        body: Center(
          child:
              Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Red')),
            ElevatedButton(
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Green')),
            ElevatedButton(
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Blue')),
          ]),
        ),
      );
    }
  }
  ```
* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
  ```
  // kode button
  ElevatedButton(
    onPressed: () {
        color = Colors.red.shade700;
        Navigator.pop(context, color);
    },
    child: const Text('Red')
  ),
  ```
  Ketika tombol ditekan dari halaman ``navigation_second.dart``, maka function ``pop()`` yang merupakan propert dari objek ``Navigator`` akan dijalankan, yang mana akan kembali ke halaman sebelumnya dengan membawa data ``color`` baru yang juga dibawa ketika function ``pop()`` dijalankan.
* Hasil kode <br>
  ![prak8](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/9bc5fcb8-4736-4c4b-a177-f858c1022dd9)

### Praktikum 9 - Memanfaatkan async/await dengan Widget Dialog
#### Pertanyaan Soal
* Kode Praktikum 9
  ```
  import 'package:flutter/material.dart';

  class NavigationDialogScreen extends StatefulWidget {
    const NavigationDialogScreen({super.key});
  
    @override
    State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
  }
  
  class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
    Color color = Colors.blue.shade700;
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: const Text('[IlhamYudan] Navigation Dialog Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Change Color'),
            onPressed: () {
              _showColorDialog(context);
            },
          ),
        ),
      );
    }
  
    _showColorDialog(BuildContext context) async {
      await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) {
            return AlertDialog(
              title: const Text('Very important question'),
              content: const Text('Please choose a color'),
              actions: [
                TextButton(
                    onPressed: () {
                      color = Colors.red.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text('Red')),
                TextButton(
                    onPressed: () {
                      color = Colors.green.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text('Green')),
                TextButton(
                    onPressed: () {
                      color = Colors.blue.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text('Blue')),
              ],
            );
          });
  
      setState(() {});
    }
  }
  ```
* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
  Ketika tombol change color ditekan maka akan ditumpuk oleh halaman yang menampilkan widget dialog ``_showColorDialog()``. Pada saat dialog muncul kerja kode sama seperti praktikum 8, yaitu kembali ke halaman sebelumnya dengan membawa data color yang baru. Perbedaanya adalah pemilihan warna pada praktikum ini menggunakan widget dialog. 
  
* Hasil kode <br>
![prak9](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/7a06902a-0b81-4afe-acbb-c0461c7a2dc8)

  

