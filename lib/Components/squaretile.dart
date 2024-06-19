import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  const SquareTile({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200]),
      child: Image.asset(imagepath),
      height: 50,
    );
  }
}
