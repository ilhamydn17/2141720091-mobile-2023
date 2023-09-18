void main(List<String> args) {
  var gifts = {
    // key : value
    'first': 'partridge',
    'second': 'turtledoves',
    'fift': 1,
  };
  var nobleGass = {2: 'Helium', 10: 'neon', 18: 2};
  // print(gifts);
  // print(nobleGass);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGass[2] = 'Helium';
  nobleGass[10] = 'neon';
  nobleGass[18] = 'argon';

  gifts['nama'] = 'Ilham Yudantyo';
  gifts['NIM'] = '2141720091';
  nobleGass[13] = 'Ilham Yudantyo';
  nobleGass[14] = '2141720091';
  mhs1['nama'] = 'Ilham Yudantyo';
  mhs1['NIM'] = '2141720091';
  mhs2[1] = 'Ilham Yudantyo';
  mhs2[2] = '2141720091';
  print(gifts); print(nobleGass); print(mhs1); print(mhs2);
}
