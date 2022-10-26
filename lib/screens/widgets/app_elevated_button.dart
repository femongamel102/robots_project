import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width:200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.deepPurple,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        child: Text(title,style: const TextStyle(
          color: Colors.grey,
          fontSize: 20
        ),),
      ),
    );
  }
}
