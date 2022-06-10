import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(
              child: Text('Sudip\'s portfolio in mobile'),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Home"),
              ],
            ))
          ],
        ),
      ),
      body: const Center(
          child: Text(
              'CheckOut Destop Version \n Mobile version in under maintenance ')),
    );
  }
}
