* Nama     : Ilham Yudantyo
* Presensi : 13
* NIM      : 2141720091
* Kelas    : TI-3H

## Praktikum 8 - Navigation and Route
### Praktikum 
#### Main 
```
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

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
      home: HomePage(),
    );
  }
}

```
#### Home Page
```
import 'package:flutter/material.dart';
import '../models/Item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigation and Routing',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(item: item)));
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name!)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

```
#### Item Page
```
import 'package:flutter/material.dart';
import '../models/Item.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name!,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text('${item.name} with ${item.price}')),
    );
  }
}

```
#### Hasil Kode
![gif_praktikum_08](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/96222e95-4426-4ab7-8002-1b8211b4b697)

### Tugas Praktikum
#### Main
```
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

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
      home: const HomePage(),
    );
  }
}

```
#### Home Page
```
import 'package:flutter/material.dart';
import '../models/Item.dart';
import 'item_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item>? items;

  @override
  void initState() {
    // TODO: implement initState
    //  Item({this.name, this.price, this.image, this.stok, this.rating});
    items = [
      Item(name: 'Sugar',price: 5000,image: 'images/sugar.jpg',stok: 100,rating: '4.5'),
      Item(name: 'Salt',price: 2000,image: 'images/salt.jpg',stok: 100,rating: '4.5'),
      Item(name: 'Olive Oil',price: 30000,image: 'images/olive.jpg', stok: 100,rating: '4.5'),
      Item(name: 'Butter',price: 8000,image: 'images/butter.jpg', stok: 100, rating: '4.5'),
      Item(name: 'Margarine',price: 5000, image: 'images/margarine.jpg',stok: 100,rating: '4.5'),
      Item(name: 'Milk',price: 12000,image: 'images/milk.jpg',stok: 100, rating: '4.5'),
      Item(name: 'Eggs', price: 8000, image: 'images/egg.jpg', stok: 100,rating: '4.5'),
      Item(name: 'Bread', price: 5000, image: 'images/bread.jpg', stok: 100, rating: '4.5'),  
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Learning Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
            padding: const EdgeInsets.all(8),
            crossAxisCount: 2,
            children: List.generate(items!.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemPage(item: items![index])));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: Hero(
                            tag: items![index].name!,
                            child: Image.asset(
                              items![index].image!,
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        items![index].name!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text("Stock : ${items![index].stok.toString()}"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 20,
                          ),
                          Text(items![index].rating!),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}
```
#### Item Page 
```
import 'package:flutter/material.dart';
import '../models/Item.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            item.name!,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: [
              Hero(tag: item.name!, child: Image.asset(item.image!)),
              const SizedBox(
                height: 20,
              ),
              Text(
                item.name!,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Rp. ${item.price.toString()}",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}

```
#### Hasil Kode 
![gif_tugas_08](https://github.com/ilhamydn17/2141720091-mobile-2023/assets/88663672/9bdadfd2-fca9-48b0-a632-971c75cc8ffd)



