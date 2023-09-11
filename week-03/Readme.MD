Nama  : Ilham Yudantyo <br>
NIM   : 2141720091 <br>
Kelas : TI-3H <br>

## Praktikum 1
### Part 1
Kode Program :
```
String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  if (test == "test2") print("Test2 again");
```
Hasil : <br>
![Output!](/week-03/docs/praktikum-1_1.png) <br>
Penjelasan : <br>
Pada blok kode program tersebut memerintahkan untuk melakukan pengecekan terhadap variabel yang bernama "test", yang mana pengecekan tersebut memeriksa apakah value dari variabel yang sudah diinisialisasikan tadi sama dengan value string yang ada di kode blok if..else.. tersebut. Kemudian pada baris program kode dibawahnya yaitu menggunakan if..else.. yang tanpa menggunakank kurung kurawal asalkan kode yang dedefinisikan hanya 1 baris. <br><br>

### Part 2
Kode Program :
```
String test = "true";
  if (test) {
    print("Kebenaran");
  }
```
Hasil : 
![Output!](/week-03/docs/praktikum-1_3.png) <br>
Penjelasan : <br>
Pada kode tersebut akan menghasilkan error ketika program dijalankan, karena dalam pengecekan if..else.. membutuhkan tipe data boolean(true/false). Pada blok kode tersebut variabel yang bernama "test" bertipe string bukan boolean.
<br>

## Praktikum 2
### Part 1
Kode Program : <br>
```
int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
```
Hasil : <br>
![Output!](/week-03/docs/praktikum-2_1.png) <br>
Penjelasan : <br>
Pada blok kode program tersebut merupakan perintah yang menggunakan while loop, yang mana dalam looping yang bertipe ini akan mengecek kondisi terlebih dahulu kemudian menjalankan perintah selanjutnya jika pengecekan bernilai true. Pada while loop, perlu diinisialisasikan terlebih dahulu sebelum blok kode looping variabel iterasinya, yang mana variabel iterasinya adalah "counter". Variabel iterasi tersebut berfungsi sebagai limit/batas dalam melakukan looping.<br>

### Part 2
Kode Program : <br>
```
int counter = 0;
do {
    print(counter);
    counter++;
} while (counter < 77);
```
Hasil : <br>
![Output!](/week-03/docs/praktikum-2_2.png) <br>
Penjelasan : <br>
Pada blok kode program tersebut menggunakan do..while.. loop, yang mana pada looping ini, kode akan dieksekusi terlebih dahulu (do) kemudian dilakukan pengecekan (while), maka dari itu ketika pengecekan yang bernilai false sekalipun akan dijalankan setidaknya sekali sebelum dilakukan pengecekan dibawahnya dilakukan.

## Praktikum 3
### Part 1
