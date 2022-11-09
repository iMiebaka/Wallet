import 'package:flutter/material.dart';

class IconDisplay extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;

  const IconDisplay(
      {super.key,
      required this.icon,
      required this.title,
      this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            child: Icon(
              icon,
              color: iconColor,
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
