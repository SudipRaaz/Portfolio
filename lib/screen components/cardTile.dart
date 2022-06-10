import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  CardTile(
      {Key? key,
      required this.icondata,
      required this.heading,
      required this.description})
      : super(key: key);
  String? icondata;
  String? heading;
  String? description;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Card(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white)),
      elevation: 12,
      child: Padding(
        padding: EdgeInsets.all(currentWidth / 37),
        child: SizedBox(
          width: currentWidth / 6.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    IconData(int.parse(icondata!), fontFamily: 'MaterialIcons'),
                    size: 62,
                    color: Colors.blue,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '$heading',
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '$description',
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
