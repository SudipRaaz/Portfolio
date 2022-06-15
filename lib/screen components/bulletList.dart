import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  BulletList({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('    * ',
            style: TextStyle(
              fontSize: 20,
            )),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
