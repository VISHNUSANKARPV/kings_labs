import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key, required this.prifix, required this.hint}) : super(key: key);
  final Widget prifix;
  final String hint;
  @override
  Widget build(BuildContext context) {
     
    return Card(
      elevation: 8,
      borderOnForeground: true,
      shadowColor: Colors.black,
      child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: prifix,
                hintText: hint,
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white
              ),
              
              ),
    );
  }
}