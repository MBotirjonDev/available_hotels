import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/components/text_view.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


SizedBox containerView(image,star,nameHotel,text1, text2,text3, price) {
    return SizedBox(
      height: getProportionateScreenHeight(340.0),
      child: Stack(
                children: [
                  Positioned(
                    top: getProportionateScreenHeight(20),
                    left: getProportionateScreenWidth(20),
                    right: getProportionateScreenWidth(20),
                    child: Container(
                      height: getProportionateScreenHeight(300),
                      width: getProportionateScreenWidth(500.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(20),
                    left: getProportionateScreenWidth(20.0),
                    right: getProportionateScreenWidth(20.0),
                    child: Container(
                      height: getProportionateScreenHeight(150.0),
                      width: getProportionateScreenWidth(280.0),
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        color: Colors.green,
                        image: DecorationImage(
                            image: NetworkImage(
                                image),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(170),
                    left: getProportionateScreenWidth(20.0),
                    right: getProportionateScreenWidth(20.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: getProportionateScreenHeight(150.0),
                      width: getProportionateScreenWidth(280.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: MainColor.kWhite,
                      ),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(25.0),
                    right: getProportionateScreenWidth(30.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(50.0),
                      
                      child: SvgPicture.asset(IconName.favorite,
                    ),)
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(135.0),
                    right: getProportionateScreenWidth(30),
                    child: Container(
                      alignment: Alignment.center,
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenWidth(50.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: MainColor.pink),
                      child:  Text(star),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(140),
                    left: getProportionateScreenWidth(30.0),
                    child:  Text(
                      nameHotel,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(180),
                    left: getProportionateScreenWidth(35.0),
                    child: textView(text1,
                        MainColor.kGreyDark, 15.0, "", FontWeight.normal),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(230),
                    left: getProportionateScreenWidth(35.0),
                    child: textView(text2,
                        MainColor.kGreyDark, 15.0, "", FontWeight.bold),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(250),
                    left: getProportionateScreenWidth(35.0),
                    child: textView(text3,
                        MainColor.kGreyDark, 15.0, "", FontWeight.bold),
                  ),
                  Positioned(
                    top: getProportionateScreenHeight(250),
                    right: getProportionateScreenWidth(35.0),
                    child: textView(price,
                        MainColor.kGreyDark, 30.0, "", FontWeight.bold),
                  ),
                ],
              ),
    );
  }