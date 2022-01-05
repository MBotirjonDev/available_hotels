import 'package:bookinghotel/core/components/size_config.dart';
import 'package:flutter/material.dart';


ListView lisviewbuilder(image, text) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (_, __) {
      return Padding(
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
          child: Text(
            text,
            style: TextStyle(fontSize: getProportionateScreenWidth(20)),
          ),
        ),
      );
    },
  );
}