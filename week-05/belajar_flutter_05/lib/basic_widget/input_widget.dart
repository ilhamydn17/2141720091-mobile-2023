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
