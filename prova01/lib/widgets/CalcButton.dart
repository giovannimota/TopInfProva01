import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: 'Enter a search term'),
    );
  }
}
