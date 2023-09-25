(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> args) {
  var record_tes = (1, 2);
  print(record_tes);
  var hasil = tukar(record_tes);
  print(hasil);

  var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // Record type annotation in a variable declaration:
  (String, int)? mahasiswa;
  mahasiswa = ('Ilham Yudantyo', 2141720091);
  // print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'Ilham Yudantyo | 2141720091');
  // mahasiswa2.$1 = 'Ilham Yudantyo'; // akan menimbulkan error karena bersifat imutable
  // print(mahasiswa2.$1);
  // print(mahasiswa2.a);
  // print(mahasiswa2.b);
  // print(mahasiswa2.$2);
}
