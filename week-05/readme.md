# Praktikum Mobile Pertemuan 5
## Praktikum 1
### Part 1
Untuk membuat projek baru Flutter, dapat menggunakan command pallete yang ada di VS Code, yaitu **CTRL+Shift+P**, kemudian akan muncul dropdown opsi seperti berikut: <br>
![Output!](/week-05/docs/prak1_1.png) <br><br>

### Part 2
Selanjutnya akan memilih lokasi folder/direktori yang mana yang akan kita pilih sebagai lokasi folder projek nantinya seperti gambar dibawah ini: <br>
![Output!](/week-05/docs/prak1_2.png) <br><br>

### Part 3
Setelah memilih folder lokasi projek, selanjutnya adalah memasukkan nama projek yang akan kita buat. Di Flutter telah menentukan aturan penamaan untuk file dan nama folder, yaitu dengan snake case dan lower case, seperti gambar dibawah ini: <br>
![Output!](/week-05/docs/prak1_3.png) <br><br>

### Part 4
Setelah langkah-langkah di atas selesai maka pembuatan projek baru selesai dan dapat dilihat dari terminal projek akan muncul tulisan bahwa projek kita suda siap, seperti gambar dibawah ini: <br>
![Output!](/week-05/docs/prak1_4.png) <br><br>

## Praktikum 2
### Part 1
Pada langkah pertama untuk menginisialisasi folder projek Flutter yang telah kita buat menjadi repositori git dan mem-publish ke github, yaitu dapat menggunakan kode perintah git di terminal projek Flutter "git init", maka projek Flutter kita tadi telah diinisialisasi menjadi repositori git yang dapat dilakukan perintah-perintah git version controller.<br>
Kemudian, setelah folder telah diinisialisasi menjadi repositori git, maka selanjutnya kita akan melakukan perintah git untuk menambahkan semua file-file baru yang belum di tracking oleh git (untracked) dengan perintah **"git add ."**, yang akan menambahkan semua kode yang baru yang belum di-tracking oleh repositori git melalui terminal yang ada di projek Flutter kita, seperti gambar di bawah ini: <br>
![Output!](/week-05/docs/prak2_1.png) <br><br>

### Part 2
Selanjutnya, kita harus melakukan perintah **"git commit -m 'pesan-commit'"** pada terminal, seperti gambar dibawah ini: <br>
![Output!](/week-05/docs/prak2_2.png) <br><br>

### Part 3
Kemudian kita melakukan publish folder projek Flutter kita tadi ke akun Github.com, karena folder repositori tadi masih secara lokal. Untuk mem-publish ke akun Github dapat dengan menggunakan perintah **"git push origin main"**, yang berarti kita melakukan **push** ke repositori github di branch main. Pada langkah ini, sebelumnya saya telah membuat repository di github: <br>
![Output!](/week-05/docs/prak2_3.png) <br><br>

### Part 4
Langkah selanjutnya untuk melakukan run projek, pertama kita memilih terlebih dahulu device yang  digunakan sebagai output dari projek, disini saya menggunakan device android saya untuk menjalankan output debug dari projek Flutter tadi. Kemudian menekan **CTRL+F5** untuk melakukan run project Flutter.<br>
![Output!](/week-05/docs/prak2_4_1.png) <br>
Hasil output di device android akan seperti di bawah ini. Gambar dibawah ini saya ambil dari screenshot device android saya. <br>
<img src="/week-05/docs/prak2_4_2.png" width="250"> <br><br>


## Praktikum 3
### Part 1
Pada langkah ini, yaitu membuat folder baru "basic_widget" di folder **lib**, kemudian membuat file didalamnya yang dinamai "text_widget.dart". Untuk menggunakan file tersebut di class Main, kita harus melakukan import seperti di bawah ini: <br>
![Output!](/week-05/docs/prak3_1.png) <br><br>
Di dalam file **text_widget.dart**, saya membuat kode baru yang berisi widget text dengan nama class **MyTextWidget** yang kemudian ditambahkan ke dalam children yang ada di widget **Column** di class main. Seperti gambar di bawah ini: <br>
![Output!](/week-05/docs/prak3_1_2.png) <br>
Maka hasil output dari dari kode tersebut adalah seperti gambar di bawah ini: <br>
<img src="/week-05/docs/prak3_1_3.png" width="250"> <br><br>

### Part 2
Untuk menampilkan gambar di Flutter, pertama kita harus membuat folder baru untuk menyimpan gambar tersebut, disini saya membuat folder **images** untuk menyimpan gambar yang akan saya gunakan. Selanjutnya, mendaftarkan gambar tadi ke file pubspec.yaml, seperti dibawah ini: 
```
flutter:
  assets:
     - images/logo_polinema.jpg
```
Selanjutnya, menjalankan perintah di terminal projek **"flutter pub get"** untuk melakukan update pada file pubspec.yaml yang kita tambahkan asset gambar tadi. Langkah selanjutnya, kita dapat menggunakan gambar yang sudah disiapkan tadi ke kode untuk ditampilkan di aplikasi kita. <br>
![Output!](/week-05/docs/prak3_2.png) <br>
Maka hasil output di device android akan seperti di bawah ini: <br>
<img src="/week-05/docs/prak3_2_2.png" width="250"> <br><br>

## Praktikum 4
### Part 1 
Selanjutnya, membuat file baru di dalam folder **basic_widget** dengan nama **"loading_cupertino"**. Kemudian dalam file tersebut menambahkah kode-kode widget untuk menampilkan icon loading cupertino. Pada langkah ini saya membuat class Stateless Widget ``CupertinoTes``, yang akan mengembalikan widget container yang berisi icon loading cupertino tersebut. <br>
![Output!](/week-05/docs/prak4_1.png) <br>
Kemudian, saya menambahkan class ``CupertinoTes`` ke dalam class yang saya namai ``CustomHome`` untuk menampilkan widget yang telah ditambahkan di class ``CupertinoTes``, seperti gambar dibawah ini.<br> 
![Output!](/week-05/docs/prak4_1_2.png) <br>
Selanjutnya adalah menambahkan class ``CustomHome`` ke class Main agar dapat ditampilkan outputnya saat dilakukan run project.
![Output!](/week-05/docs/prak4_1_3.png) <br>
Hasil output pada device akan seperti berikut: <br>
<img src="/week-05/docs/prak4_1_4.png" width="250"> <br><br>

### Part 2
Membuat floating action button, yaitu dengan menambahkan widget ``FloatingActionButton()`` dengan beberapa parameternya adalah _onPressed_, _backgroundColor_, dan _child_ yang diisi dengan _Icons.thumb_up_. <br>
![Output!](/week-05/docs/prak4_2.png) <br>
Hasil output dari project yang di run dengan kode tersebut akan sebagai berikut: <br>
<img src="/week-05/docs/prak4_2_2.png" width="250"> <br><br>

### Part 3 
Untuk membuat ``Dialog Widget`` adalah dengan menambahkan widget ``ElevatedButton()``, dengan fungsi di ``onPressed`` adalah function ``showAlertDialog(context)``<br>
![Output!](/week-05/docs/prak4_3.png) <br>
Hasilnya akan seperti berikut: <br>
<img src="/week-05/docs/prak4_3_3.png" width="250"> <br><br>

### Part 4
Membuat input widget <br>
```
import 'package:flutter/material.dart';

class InputTes extends StatefulWidget {
  const InputTes({super.key});

  @override
  State<InputTes> createState() => _InputTesState();
}

class _InputTesState extends State<InputTes> {
  String nama = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan Nama Anda',
                labelText: 'nama anda',
              ),
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Halo $nama'),
                      );
                    });
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}

```
Hasil dari kode tersebut adalah input nama dengan tombol submit, ketika tombol submit ditekan akan muncul Dialog Alert dari Flutter.<br>
<img src="/week-05/docs/prak4_4.png" width="250"> <img src="/week-05/docs/prak4_4_2.png" width="250"> <br><br>

### Part 5
Membuat date and time picker dengan Flutter adalah sebagai berikut: <br>
```
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();

  // Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(200);
  DateTime last = DateTime(2025);

  // Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: userInterface(context),
    );
  }

  Widget userInterface(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        TextFormField(
          controller: _dateC,
          decoration: const InputDecoration(
              labelText: 'Date Picker', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _timeC,
          decoration: const InputDecoration(
              labelText: 'Time Picker', border: OutlineInputBorder()),
        ),
        ElevatedButton(
            onPressed: () {
              displayDatePicker(context);
            },
            child: const Text('Pick Date')),
        ElevatedButton(
            onPressed: () {
              displayTimePicker(context);
            },
            child: const Text('Pick Time'))
      ],
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
        context: context,
        initialDate: selected,
        firstDate: initial,
        lastDate: last);

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
``` 
Hasil dari kode tersebut adalah seperti berikut : <br>
<img src="/week-05/docs/prak4_5.png" width="250"> <img src="/week-05/docs/prak4_5_2.png" width="250"> <img src="/week-05/docs/prak4_5_3.png" width="250"> <br><br>
