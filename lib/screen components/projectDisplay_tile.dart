import 'package:flutter/material.dart';

class ProjectDisplay_tile extends StatelessWidget {
  ProjectDisplay_tile({Key? key, required this.imgSource}) : super(key: key);
  String imgSource;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 416,
        height: 312,
        child: Card(
          elevation: 10,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          child: Container(
              width: 416,
              height: 312,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 129, 236),
                  image: DecorationImage(
                      image: AssetImage(imgSource), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(10)))),
        ));
  }
}
