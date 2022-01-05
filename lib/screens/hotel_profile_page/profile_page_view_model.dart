import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/screens/hotel_profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class ProfilePageViewModel extends State<ProfilePage> {
  Container profileMethod(profileImage, profileText) {
    return Container(
      height: getProportionateScreenHeight(70.0),
      decoration: BoxDecoration(
        color: MainColor.kWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top: getProportionateScreenHeight(5.0)),
          child: Container(
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenWidth(55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  profileImage,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          profileText,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: MainColor.kBlacText),
        ),
      ),
    );
  }

  InkWell settingMethod(icon, text, page) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top: getProportionateScreenHeight(5.0)),
          child: Container(
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenWidth(55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(15.0),
                bottom: getProportionateScreenHeight(15.0),
              ),
              child: SvgPicture.asset(
                icon,
                color: MainColor.pink,
                height: getProportionateScreenHeight(10),
                width: getProportionateScreenWidth(10.0),
              ),
            ),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: MainColor.kBlacText),
        ),
      ),
    );
  }
  // Add your state and logic here
}