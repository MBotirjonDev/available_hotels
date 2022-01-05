import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/screens/hotel_search_room_page/search_room_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './notifications_page.dart';

abstract class NotificationsPageViewModel extends State<NotificationsPage> {
  Container topScreensMethod(backRoundImage,hotelName,sana,) {
    return Container(
          height: getProportionateScreenHeight(300),
          width: double.infinity,
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  backRoundImage),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(50.0),
                  right: getProportionateScreenWidth(30.0),
                ),
                child: Text(
                  hotelName,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(35),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(50.0),
                  right: getProportionateScreenWidth(30.0),
                ),
                child: Text(
                sana,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(30.0),
                  top: getProportionateScreenHeight(20.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SearchRoomPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(20),
                      bottom: getProportionateScreenHeight(20),
                    ),
                    height: getProportionateScreenHeight(70),
                    width: getProportionateScreenWidth(300),
                    decoration: BoxDecoration(
                      gradient: MainColor.kOrangeGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("Search a Room",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: MainColor.kGreyLight,
                        )),
                  ),
                ),
              )
            ],
          ),
        );
}
}