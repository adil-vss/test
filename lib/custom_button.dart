import 'package:flutter/material.dart';

// Define a constant color for the button
const Color _buttonColor = Colors.blue;

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onTap;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
    child: Text(text, style: TextStyle(fontSize: 16, color: Colors.white),),
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xffda7065),
    padding:  EdgeInsets.symmetric(
    vertical: height,
    horizontal: width,
    ),
    textStyle: const TextStyle(fontSize: 16, color: Colors.white),
    ));
  }
}
