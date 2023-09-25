Nama : Ilham Yudantyo <br>
Kelas : TI-3H <br>
NIM : 2141720091 <br>
No. Presensi : 13 <br><br>

# Pertemuan 04 - Dart Collections

## Praktikum 1 - Tipe Data List
### Part 1 
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak1_1.png) <br>
**Penjelasan :** <br>
Kode program tersebut akan menampilkan panjang dari list (list.length()) dan value list di indeks ke-1. Kemudian dibawahnya dilakukan pengubahan value pada indeks ke-1 menjadi **1**. <br>
### Part 2
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak1_2.png) <br>
**Penjelasan :** <br>
Pada kode di atas dilakukan inisialisasi list dengan keyword variabel **final** yang mempunyai index = 5 dengan default value = null. Kemudian mengisi nama dan NIM Anda pada elemen index ke-1 dan ke-2. Saat Inisialisasi, default list adalah null, maka saat akan menambahkan value di list tersebut menggunakan function add(), dengan parameter yang diisikan adalah value yang akan ditambahkan kedalam list.

## Praktikum 2 - Tipe Data Set
### Part 1
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak2_1.png) <br>
**Penjelasan :** <br> 
Pada kode di atas melakukan perintah untuk membuat variabel dengan tipe Set, saat dilakukan print pada variabel tersebut maka akan muncul isi nilai yang ada pada variabel halogens yang bertipe Set.
### Part 2 
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak2_2.png) <br>
**Penjelasan :** <br>
Pada kode yang telah dibuat di atas, yaitu inisialisasi variabel yang bertipe Set dengan beberapa cara yang berbeda. Pada cara pertama dan kedua tersebut nampak bahwa pembuatan variabel dengan tipe data Set yang sudah ditentukan juga tipe data "String" untuk value-value yang akan dimasukkan kedalam Set tersebut nantinya, maka value selain tipe data "String" tidak akan bisa dimasukkan kedalam variabel tersebut. Pada cara ketiga adalah cara inisialisasi variabel bertipe Set dengan cara langsung, variabel Set tersebut akan bersifat dinamis. Nampak pada ketiga variabel tersebut juga menggunakan cara inisialisasi yang ber-default null.
### Part 3
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak2_3.png) <br>
**Penjelasan :** <br>
Pada kode di atas, ada 2 variabel Set, yaitu names1 dan names2 yang sama-sama ber-default null. Pada variabel names1 ditambahkan value-nya dengan menggunakan method add(), yang mana jika menggunakan method ini akan memasukkan value-nya satu persatu. Kemudian pada variabel names2 menambahkan value-nya dengan menggunakan method addAll(). Method addAll() adalah cara untuk menambahkan value kedalam set dengan lebih dari satu nilai sekaligus (variabel Set lainnya). Variabel names2 menambahkan valuenya dengan menggunakan method addAll() yang berparameter names1 yang sebelumnya sudah diisi value atau nilainya.

## Praktikum 3 - Tipe Data Map
### Part 1 
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak3_1.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah inisialisasi variabel yang bertipe Map, yang mana dalam tipe tersebut harus ada "key" dan "value". Saat dilakukan print ke output maka akan muncul key dan value dari masing-masing variabel yang sudah diinisialisasi tadi.
### Part 2 
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak3_2.png) <br>
**Penjelasan :** <br>
Pada kode diatas dilakukan inisialisasi variabel yang bertipe Map dengan default null, dan juga pada masing variabel tersebut ditentukan tipe data untuk key dan valuenya. Kemudian dari masing-masing variabel tersebut dilakukan penambahan data di dalamnya, yaitu key dan value.
### Part 3
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak3_3.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah membuat data baru (NIM dan nama), yang mana untuk menambahkan data ke dalam Map maka harus membuat key dan value nya. Hasil penambahan data tadi dapat dilihat pada output yang ditampilkan di terminal.

## Praktikum 4 - Spread and Control Flow Operator
### Part 1
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_1.png) <br>
![Output!](/week-04/docs/prak4_1_perbaikan.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah melakukan inisialisasi variabel yang bertipe List, namun terdapat error pada langkah pertama yang dikarenakan nama variabel yang akan ditampilkan di output tidak sesuai, maka perlu dilakukan perbaikan dahulu dan akan menghasilkan output nilai-nilai dari masing-masing variabel List dan panjang ukuran List (list2.length) tersebut. 
### Part 2 
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_2.png) <br>
**Penjelasan :** <br>
Pada kode diatas akan terdapat error saat pertama kali dijalankan karena terdapat salah satu value pada list1 yang bernilai null, maka disini diganti menjadi nilai lain yang tidak bernilai null. Kemudian pada variabel list3 menggunakan operator yang akan menggabungkan nilai-nilai dari list1 ke dalam variabel list3, nampak juga pada hasil output tersebut panjang dari list3 bertambah. 
### Part 3
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_2.png) <br>
![Output!](/week-04/docs/prak4_3.png) <br>
**Penjelasan :** <br>
Pada kode diatas akan terdapat error saat pertama kali dijalankan karena terdapat salah satu value pada list1 yang bernilai null, maka disini diganti menjadi nilai lain yang tidak bernilai null. Kemudian pada variabel list3 menggunakan operator yang akan menggabungkan nilai-nilai dari list1 ke dalam variabel list3, nampak juga pada hasil output tersebut panjang dari list3 bertambah. <br>
Pada gambar dibawahnya juga menunjukkan penggunaan operator spread yang menggabungkan nilai dari variabel nama_nim kedalam variabel mhs, hasilnya dapat dilihat pada output di terminal tersebut. 
### Part 4
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_4_perbaikan1.png) <br>
![Output!](/week-04/docs/prak4_4_perbaikan2.png) <br>
**Penjelasan :** <br>
Pada kode diatas adalah contoh penggunaan control flow yang ada di List, dari gambar tersebut dapat dilihat perbedaan hasil outputnya antara saat promoActive bernilai true dan false.
### Part 5
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_5_1.png)
![Output!](/week-04/docs/prak4_5_2.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah contoh penggunaan control flow pada List, yang mana jenis control flow yang digunakan adalah switch case. Pada kode tersebut saya membuat beberapa case alih-alih untuk melakukan login dan juga dari gambar-gambar tersebut dapat dilihat perbedaan hasilnya bedasarkan case login yang ada pada saat melewati control flow. 
### Part 6
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak4_6.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah contoh penggunaan looping di dalam List untuk menambahkan value di dalam List lain. Hasil dari penambahan value List dengan menggunakan loop tersebut dapat dilihat pada hasil output yang ada di terminal.

## Praktikum 5 - Tipe Data Record
### Part 1
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak5_1.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah inisialisasi sebuah **record** baru dengan memasukan beberapa nilai yang ada didalamnya. Nilai-nilai yang ada pada record tersebut tidak akan bisa diubah, serta **record** tersebut tidak akan bisa ditambah nilai baru.
### Part 2
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak5_2.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah pembuatan fungsi dengan **record**. Fungsi tersebut bertujuan untuk melakukan swap nilai antara variabel a dan b. Dengan menggunakan **record**, swap menjadi lebih sederhana, tanpa kita membuat satu variabel baru untuk menampung nilai yang akan di-swap, function tersebut juga dapat dinisialisasi di luar scope function main(). Pada function **record** tersebut juga bisa melakukan multiple return, yaitu mengembalikan lebih dari 1 nilai. Ini adalah sifat dari function yang menerapkan tipe **record**. 
### Part 3
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak5_3.png) <br>
![Output!](/week-04/docs/prak5_3_perbaikan.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah deklrasi variabel yang bertipe **record**, awalnya akan menghasilkan error ketika dijalankan, hal tersebut dikarenakan variabel tersebut mendeteksi adanya null, maka perlu ditambahkan null safety. Kemudian variabel tersebut dinisialisasi dengan NIM dan nama. Hasilnya dapat dilihat pada output di terminal.
### Part 4
**Hasil dan Kode Program :** <br>
![Output!](/week-04/docs/prak5_4.png) <br>
![Output!](/week-04/docs/prak5_4_2.png) <br>
**Penjelasan :** <br>
Pada kode di atas adalah menunjukkan bagaimana cara untuk mengakses nilai yang ada di **record**. Untuk nilai yang tidak memiliki nama parameter cukup dengan "mahasiswa2.$1", sedangkan untuk yang memiliki nama parameter "mahasiswa2.a". <br>
**Record** tidak bisa diubah nilainya, maka untuk mengganti nilai yang ada pada **record** yaitu dengan mengganti nilai yang ada pada saat inisialisasi awal.

## TUGAS PRAKTIKUM 
### Soal 
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
### Jawaban
2. Function adalah sebuah blok kode program yang digunakan untuk menyelesaikan suatu permasalahan tertentu, yang dapat memiliki parameter sebagai nilai yang akan diolah di dalamnya, function juga dapat mengembalikan hasil dari penyelesaian solusinya.
3. Ada beberapa jenis parameter yang ada di function dart:
   * **Named optional parameter** : function yang mendefinisikan nama parameter saat memeberikan value dari parameter tersebut, contohnya sebagai berikut:
     ```
     void greeting({name, age}){
       print('Hello $name, you\'re age is $age');
     }

     void main() {
       greeting(age: 22, name: 'Ilham');
     }
     // Akan menghasilkan output :  Hello Ilham, you're age is 22
     ```
     Dapat dilihat juga dengan menggunakan named parameter, kita juag dapat memberikan nilai ke parameter tanpa meilihat urutan parameter yang       ada di function
   * **Optional parameter** : Memungkinkan untuk dapat tidak mendefinisikan parameter yang ada di function, dengan cara memberi kurung siku ([]) pada parameter yang ingin dijadikan optional parameter, contohnya sebagai berikut:
     ```
     void greeting(String? name, [int? age]){
        print('Hello $name, you\'re age is $age');
     }

     void main() {
        greeting('Ilham'); 
     }

     // akan menghasilkan : Hello Ilham, you're age is null
     ```
     Dengan memberikan optional parameter, ketika kita tidak mendefinisikan isi value dari parameter tersebut akan menghasilkan null, tidak menjadikan kode error.
4. function sebagai first-class objects adalah fungsi diperlakukan sebagai objek yang sama dengan tipe data lain, seperti integer, string, atau list. Kita dapat menyimpan fungsi dalam variabel, mengirimkannya sebagai argumen ke fungsi lain, mengembalikannya dari fungsi lain. Contohnya adalah sebagai berikut:
   ```
     int add(int a, int b) {
       return a + b;
     }
    var additionFunction = add; // Menyimpan fungsi add dalam variabel additionFunction
    print(additionFunction(3, 4)); // Memanggil fungsi melalui variabel
    // akan menghasilkan : 7
   ```
5. Anonymous function adalah function yang tidak bernama alias _nameless_ atau _anonymous_. Anonymous function ini juga dikenal dengan nama lambda. Untuk membuat lambda atau anonymous function kita cukup menuliskan tanda kurung untuk menerima parameter dan body function-nya, contohnya adalah sebagai berikut:
   ```
    void main() {
      (int num1, int num2) {
        return num1 + num2;
      };
    }
   ```
6. _Lexical scope_ atau sering disebut _static scope_ adalah konsep dalam pemrograman yang mengacu pada cara variabel dalam sebuah program diakses dan diresolusi berdasarkan struktur fisik kode program, terutama pada saat pengkodean (leksikal) dan bukan pada saat eksekusi program, contohnya adalah seperti berikut:
   ```
   bool topLevel = true;

   void main() 
    {
      var insideMain = true;
    
      void myFunction() {
        var insideFunction = true;
    
        void nestedFunction() {
          var insideNestedFunction = true;
    
          assert(topLevel);
          assert(insideMain);
          assert(insideFunction);
          assert(insideNestedFunction);
        }
      }
    }
   ```
   sedangkan _Lexical Closure_ adalah Penutupan adalah _function object_ yang memiliki akses ke variabel dalam _lexical scope_-nya, meskipun fungsi tersebut digunakan di luar _scope_ aslinya. Contohnya adalah sebagai berikut:
   ```
   /// Returns a function that adds [addBy] to the
   /// function's argument.
    Function makeAdder(int addBy) {
      return (int i) => addBy + i;
    }
    
    void main() {
      // Create a function that adds 2.
      var add2 = makeAdder(2);
    
      // Create a function that adds 4.
      var add4 = makeAdder(4);
    
      assert(add2(3) == 5);
      assert(add4(3) == 7);
    }
   ```
7. Untuk membuat return multiple value di functions Dart, kita dapat membuat function tersebut yang bertipe **record**. **Record** adalah tipe data baru yang ada di dalam dart. Contoh pembuatan function-nya adalah sebagai berikut:
   ```
   (int, String) foo() {
      return (42, "foobar");
   } 

    void main() {
      var (a,b) = foo();
      print("int: ${a}");
      print("String: ${b}");
    }

    /*
      Akan menghasilkan kode berikut:
      int: 42
      String: foobar
   */
   ```
   Pada kode di atas, membuat function yang bertipe kembalian **record** yang diberi nama "foo()". Kemudian pada function main() dilakukan inisialiasi variabel yang bertipe **record** yang memiliki nilai a dan b, yang mana variabel tersebut akan memanggil function foo(), function foo() akan mengembalikan 2 nilainya.
