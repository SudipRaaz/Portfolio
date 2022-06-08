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
          borderSide: BorderSide(color: Colors.white)),
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: SizedBox(
          width: currentWidth / 6.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon(Icons.itemMap['title'])
              Icon(
                IconData(int.parse(this.icondata!),
                    fontFamily: 'MaterialIcons'),
                size: 62,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                '${this.heading}',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                '${this.description}',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
