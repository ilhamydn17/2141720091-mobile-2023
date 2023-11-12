# Mobile Course - Week 11
## State Management
### Praktikum 1 - Membuat Aplikasi Todo-List
#### Hasil Praktikum 
![run2](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/6c7bdec8-1364-4fb6-8d51-bb9c2a9855f7)
#### Penjelasan 
Pada hasil praktikum 1, yaitu membuat aplikasi sederhana untuk membuat todo-list, yang mana pada praktikum ini dilakukan praktik sederhana untuk membuat tampilan aplikasi pada flutter dengan menerapkan jenis halaman yang ``statefull``, yang berarti data-data yang ada pada halaman tersebut akan dinamis sesuai aksi yang diperintahkan pada halaman/screen tersebut.
#### Tugas Praktikum 1
1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian? <br>
   => Pada langkah tersebut dilakukan pembuata file data_layers.dart, yang mana isi dari file ini adalah perintah untuk melakukan export kedua file yang dibutuhkan dari class models. Dengan menerapkan langkah tersebut dapat memudahkan untuk melakukan import file dari folder models, karena hanya dengan mengimport file data_layers.dart saja sudah dapat memanggil kedua kelas model yang dibutuhkan yaitu plan.dart dan task.dart.
2. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?<br>
  => Variabel plan berasal dari ``models/plan.dart``, yang mana variabel tersebut sebagai untuk data (plan) todo-list yang akan digunakan dalam halaman PlanScreen().
3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! <br>
   ![run2](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/6c7bdec8-1364-4fb6-8d51-bb9c2a9855f7) <br>
   => Pada langkah tersebut dilakukan definisi fungsi _buildTaskTile. Fungsi tersebut akan digunakan dalam fungsi _buildList di setiap iterasi yang dilakukan oleh ListView.builder(). Kelas _buildTaskTile akan mengembalikan widget ListTile. ListTile adalah widget dari Flutter yang digunakan untuk menampilkan item dalam bentuk baris dengan beberapa elemen seperti leading, title, dan sebagainya. Checkbox: Digunakan sebagai bagian "leading" dari ListTile. CheckBox akan menampilkan kotak centang yang dapat dicentang atau dicentang kembali berdasarkan nilai properti complete dari objek Task. TextFormField ini adalah widget input teks yang digunakan untuk menampilkan dan mengedit deskripsi tugas. Properti initialValue diatur dengan deskripsi tugas saat ini.
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ? <br>
  => Maksud dari kode tersebut adalah membuat dan mengelola ScrollController untuk mengontrol perilaku scroll dalam widget. Inisialisasi dilakukan saat widget pertama kali dibuat, dan pembersihan dilakukan saat widget dihancurkan untuk menghindari kebocoran memori. <br>
    function **initState()** dipanggil saat widget pertama kali dibuat. Dalam function tersebut setiap kali terjadi perubahan scroll, akan meminta fokus dari elemen-elemen yang mungkin sedang difokuskan, sehingga menghilangkan fokus dari elemen-elemen tersebut. Fungsi **dispose()** akan dipanggil saat widget dihancurkan, dalam fungsi ini akan melakukan _dispose_  atau membersihkan sumber daya yang tidak lagi diperlukan, dalam hal ini adalah ScrollController.
### Praktikum 2
#### Hasil Praktikum 2
![prak2](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/9437b73f-3618-4592-9012-54e890996b03)
1. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
   
   InheritedWidget adalah sebuah widget yang memungkinkan widget-widget turunannya untuk mengakses data yang disimpan di dalamnya. InheritedWidget digunakan untuk berbagi data di antara widget-widget yang tidak memiliki hubungan induk-anak secara langsung.

   InheritedNotifier adalah subclass dari InheritedWidget yang menyediakan yang memudahkan mengelola data yang dapat berubah dan memberitahukan perubahan tersebut ke widget-widget turunannya. InheritedNotifier menggunakan objek ValueNotifier untuk menyimpan data yang dapat berubah.
2. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
   
   Function completedCount dan completenessMessage adalah method getter yang digunakan untuk mendapatkan jumlah tugas yang telah diselesaikan dan pesan kelengkapan tugas. Kedua metode ini digunakan untuk mendapatkan informasi tentang kelengkapan tugas pada tiap **plan** yang dibuat oleh user. Informasi ini dapat digunakan untuk menampilkan kemajuan rencana kepada pengguna atau untuk mengambil tindakan lebih lanjut. 
3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! <br>
   ![prak2](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/9437b73f-3618-4592-9012-54e890996b03) <br>
   SafeArea merupakan widget yang digunakan untuk menghindari tumpang tindih antara aplikasi yang dibuat flutter dan elemen UI sistem yang berada di papan notifikasi bagian atas.

### Praktikum 3
#### Hasil Praktikum 3
![prak3](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/4042c5f4-d781-46ab-ac23-92f40e5fd602)
