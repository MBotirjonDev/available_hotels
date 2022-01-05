import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/core/constants/icons.dart';
import 'package:bookinghotel/screens/hotel_room_page/room_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import './hotels_page_view_model.dart';

class HotelsPageView extends HotelsPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_outlined),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(IconName.favorite,color: MainColor.kBlack19,),
        )],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(310.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1562133567-b6a0a9c7e6eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              title: Text(
                "Mountain resort",
                style: TextStyle(fontSize: 22, color: MainColor.kGreyDark),
              ),
              trailing: Container(
                alignment: Alignment.center,
                height: getProportionateScreenHeight(30.0),
                width: getProportionateScreenWidth(60.0),
                decoration: BoxDecoration(
                    color: MainColor.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("* 4.6"),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(200.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hotel.png'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50.0),
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  height: getProportionateScreenHeight(30.0),
                  width: getProportionateScreenWidth(30.0),
                  child: SvgPicture.asset(
                    IconName.location,
                    color: MainColor.pink,
                  ),
                ),
                title: const Text(
                  "Waikki hi nimadur",
                  style: TextStyle(color: MainColor.kBlack, fontSize: 23.0),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50.0),
              width: double.infinity,
              child: ListTile(
                leading: SizedBox(
                  height: getProportionateScreenHeight(30.0),
                  width: getProportionateScreenWidth(30.0),
                  child: SvgPicture.asset(
                    IconName.walk,
                    color: MainColor.pink,
                  ),
                ),
                title: const Text(
                  "3.2 km from centre",
                  style: TextStyle(color: MainColor.kBlack, fontSize: 23.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => RoomPage()));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(20),
                ),
                height: getProportionateScreenHeight(70),
                width: getProportionateScreenWidth(338),
                decoration: BoxDecoration(
                  gradient: MainColor.kOrangeGradient,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Room",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: MainColor.kGreyLight,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}