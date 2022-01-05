import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/core/constants/icons.dart';
import 'package:bookinghotel/screens/hotel_reservation_page/reservation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import './room_page.dart';

abstract class RoomPageViewModel extends State<RoomPage> {
  SizedBox hotelInfo(hotelImage, hotelName, price, nights) {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getProportionateScreenHeight(400),
        width: getProportionateScreenWidth(200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: getProportionateScreenHeight(300),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: MainColor.kWhite,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: getProportionateScreenHeight(170),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(hotelImage), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(180),
                left: getProportionateScreenWidth(10.0),
                child: Text(
                  hotelName,
                  style: const TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(180.0),
                right: getProportionateScreenWidth(10.0),
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    IconName.stop,
                    color: Colors.pink,
                  ),
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(220.0),
                left: getProportionateScreenWidth(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.monetization_on_outlined,
                      color: MainColor.kBlack19,
                      size: 15,
                    ),
                    Text(
                      "  Refundable",
                      style: TextStyle(color: MainColor.kBlack),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(240.0),
                left: getProportionateScreenWidth(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.breakfast_dining_outlined,
                      color: MainColor.kBlack19,
                      size: 15,
                    ),
                    Text(
                      "  Breakfast included",
                      style: TextStyle(color: MainColor.kBlack),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(260.0),
                left: getProportionateScreenWidth(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.wifi,
                      color: MainColor.kBlack19,
                      size: 15,
                    ),
                    Text(
                      "  Wi-fi",
                      style: TextStyle(color: MainColor.kBlack),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(280.0),
                left: getProportionateScreenWidth(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.air,
                      color: MainColor.kBlack19,
                      size: 15,
                    ),
                    Text(
                      "  Air Conditioner",
                      style: TextStyle(color: MainColor.kBlack),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: getProportionateScreenHeight(300.0),
                left: getProportionateScreenWidth(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.bathtub,
                      color: MainColor.kBlack19,
                      size: 15,
                    ),
                    Text(
                      "  Bath",
                      style: TextStyle(color: MainColor.kBlack),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: getProportionateScreenWidth(30.0),
                top: getProportionateScreenHeight(300.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ReservationPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(20),
                      bottom: getProportionateScreenHeight(20),
                    ),
                    height: getProportionateScreenHeight(60),
                    width: getProportionateScreenWidth(160.0),
                    decoration: BoxDecoration(
                      gradient: MainColor.kOrangeGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("Select",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: MainColor.kGreyLight,
                        )),
                  ),
                ),
              ),
              Positioned(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(330),
                child: Text(
                  price,
                  style:
                      const TextStyle(color: MainColor.kGreyDark, fontSize: 22),
                ),
              ),
              Positioned(
                left: getProportionateScreenWidth(15),
                top: getProportionateScreenHeight(360),
                child: Text(
                  nights,
                  style:
                      const TextStyle(color: MainColor.kGreyDark, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
