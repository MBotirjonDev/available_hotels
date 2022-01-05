import 'package:flutter/material.dart';


  Text textView(
    text,
    color,
    fontsize,
    family,
    textweight
  ) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: family,
        fontWeight: textweight
      ),
    );
  }
