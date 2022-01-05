import 'package:bookinghotel/core/components/size_config.dart';
import 'package:flutter/material.dart';


Padding containerView2(image, text) {
  return
  Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(10.0),
          bottom: getProportionateScreenHeight(10.0),
          left: getProportionateScreenWidth(10.0),
          right: getProportionateScreenWidth(20.0),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          height: getProportionateScreenHeight(120.0),
          width: getProportionateScreenWidth(200.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              color: Colors.green),
          child: Padding(
            padding:  EdgeInsets.only(left: getProportionateScreenWidth(25.0),),
            child: Text(
              text,
              style: TextStyle(fontSize: getProportionateScreenWidth(20)),
            ),
          ),
        ),
      );
}