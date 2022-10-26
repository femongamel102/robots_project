import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({Key? key, required this.text, this.color = Colors.white})
      : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color, fontSize: 60, fontWeight: FontWeight.bold),
    );
  }
}
