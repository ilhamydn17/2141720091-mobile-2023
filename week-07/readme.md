### Nama : Ilham Yudantyo
### Presensi : 13
### NIM : 2141720091
### Kelas TI-3H

## Praktikum 07 - Flutter Layouting
### Praktikum 
#### Main Code
```
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'title.dart';
import 'desc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout : Ilham Yudantyo | 2141720091',
      home: Scaffold(
          body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/air_terjun.jpg'),
            const TitleSection(),
            const ButtonSection(),
            const Desc()
          ],
        ),
      )),
    );
  }
}

```
#### Title Section
```
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 24, right: 20),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Coban Rondo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text('Batu, Malang, Indonesia',
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          /* soal 3*/
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('4,5')
        ],
      ),
    );
  }
}

```
#### Button Section
```
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  final Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(color, const Icon(Icons.call), 'CALL'),
          buildButtonColumn(color, const Icon(Icons.near_me), 'ROUTE'),
          buildButtonColumn(color, const Icon(Icons.share), 'SHARE'),
        ],
      ),
    );
  }

  Column buildButtonColumn(Color color, Icon icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 2),
          child: Text(
            label,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blue),
          ),
        )
      ],
    );
  }
}

```
#### Desc. Section
```
import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  const Desc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Text(
        'Salah satu objek Wisata Air Terjun yang indah adalah Coban Rondo, terletak di lereng Gunung Panderman Resor yaitu terletak di Desa Pandesari, Kecamatan Pujon (sekitar 32km jauhnya ke Barat dari Kabupaten Malang). Termasuk kategori salah satu Tempat Wisata daya tarik kota Kabupaten Malang. Memiliki ketinggian sekitar 84m. Secara geografis Air Terjun ini berada pada ketinggian 1.135 diatas permukaan laut (dpl) dengan suhu rata-rata 220c. Pada musim penghujan debit atau jatuhnya air pada Air Terjun ini mencapai hingga 150 liter per-detik, sedangkan pada musim kemarau hanya 90 liter per-detik. Konon sejarah nama Coban Rondo diambil dari kisah tentang Dewi Anjarwati dari Gunung Kawi yang menikah dengan Raden Baron Kusuma dari Gunung Anjasmoro.',
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}

```
#### Output Program Praktikum 
<img src="/week-07/docs/praktikum.png" width="400"> <br><br>

### Tugas Praktikum (Percobaan Layouting Flutter)
#### 1. Axis and Alignment
<img src="/week-07/docs/1_mainAxisAlignment.png" width="400"> <br>
#### 2. Axis and Alignment (Cross Axis Alignment)
<img src="/week-07/docs/2_crossAxisAlignment.png" width="400"> <br>
#### 3. Flexible Widget
<img src="/week-07/docs/3_flexibleWidget.png" width="400"> <br>
#### 4. Expanded Widget
<img src="/week-07/docs/4_expandedWidget.png" width="400"> <br>
#### 5. Sized Box Widget (Resizing Widget)
<img src="/week-07/docs/5_sizedBox_resizingWidget.png" width="400"> <br>
#### 6. Sized Box Widget (Creating Space)
<img src="/week-07/docs/6_sizedBox_creatingSpace.png" width="400"> <br>
#### 7. Spacer Widget
<img src="/week-07/docs/7_spacerWidget.png" width="400"> <br>
#### 8. Text Widget
<img src="/week-07/docs/8_textWidget.png" width="400"> <br>
#### 9. Icon widget
<img src="/week-07/docs/10_iconWidget.png" width="400"> <br>
#### 10. Image widget
<img src="/week-07/docs/11_image_widget.png" width="400"> <br>
#### 11. Mixing Task
<img src="/week-07/docs/12_mixing.png" width="400"> <br>



