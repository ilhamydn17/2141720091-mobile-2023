import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTes extends StatelessWidget {
  const CupertinoTes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CupertinoButton(
              child: const Text('Contoh Cupertino Butt'), onPressed: () {}),
          const CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}
