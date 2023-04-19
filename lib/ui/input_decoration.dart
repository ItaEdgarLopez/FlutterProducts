// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class MyInputDecoration  {

  static InputDecoration authInputDecoration({
    required String  hintText,
    required  String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple
                    ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2
                  )
                ),
              hintText: hintText,
              labelText: labelText,
              labelStyle: TextStyle(
                color: Colors.grey
              ),
              prefixIcon: prefixIcon != null
              ?  Icon( prefixIcon, color: Colors.deepPurple,)
              : null
              );
  }
}
