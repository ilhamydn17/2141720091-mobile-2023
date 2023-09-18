void main(List<String> args) {
  var list1 = [1, 2, '4'];
  var list2 = [0, ...list1];

  // list1 = [1, 2, 6];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // var mhs = [];
  // var nama_nim = ['Ilham Yudantyo', '2141720091'];
  // mhs = ['TI-3H', ...nama_nim];
  // print(mhs);

  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  var login = 'Manager';
  switch (login) {
    case 'Manager':
    case 'Employee':
    default:
  }
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Outlet'
  ];
  // print(nav2);

  var listOfInt = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInt) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
