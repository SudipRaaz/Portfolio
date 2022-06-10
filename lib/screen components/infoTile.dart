import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  InfoTile(
      {Key? key,
      required this.iconName,
      required this.heading,
      required this.subHeading})
      : super(key: key);
  String heading;
  String subHeading;
  final iconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 100),
      child: SizedBox(
        child: ListTile(
          leading: Icon(
            iconName,
            size: 50,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' $heading '),
              Text(' $subHeading '),
            ],
          ),
        ),
      ),
    );
  }
}
