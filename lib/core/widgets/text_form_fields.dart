import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter/material.dart';


Padding textformfield(String hint, TextEditingController controller) {
  return Padding(
    padding: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
        right: getProportionateScreenWidth(10),
        left: getProportionateScreenWidth(10.0)),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: MainColor.kOffWhite.withOpacity(0.6)),
            borderRadius: BorderRadius.circular(30),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusColor: MainColor.kGrey,
          hintText: hint,
          hintStyle:
             const TextStyle(fontSize: 16.0,color: MainColor.kGreyDark)
    ),
  ));
}