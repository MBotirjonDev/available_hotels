import 'package:bookinghotel/core/components/container_view.dart';
import 'package:bookinghotel/core/components/container_view_second.dart';
import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/components/text_view.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/models/hotel_model.dart';
import 'package:bookinghotel/screens/hotel_all_hotels_page/hotels_page.dart';
import 'package:bookinghotel/services/hotel_services.dart';
import 'package:flutter/material.dart';

import './search_room_page_view_model.dart';

class SearchRoomPageView extends SearchRoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context, AsyncSnapshot<List<HotelsAvailable>> snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return const Center(child: Text("Error"));
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  drowDonwMethod(context),
                  divider(),
                  bottomView(),
                  divider(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10.0),
                        top: getProportionateScreenHeight(20.0)),
                    child: textView("Near the beacher", MainColor.kBlack19,
                        25.0, "ass", FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HotelsPage()));
                    },
                    child: SizedBox(
                      height: getProportionateScreenHeight(150.0),
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemBuilder: (_, __) {
                          return containerView2(
                              snap.data![__].imageMountain.toString(),
                              snap.data![__].nameMountain.toString());
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: snap.data!.length,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HotelsPage()));
                    },
                    child: Container(
                      height: getProportionateScreenHeight(900),
                      width: MediaQuery.of(context).size.width,
                      color: MainColor.kGreyDark,
                      child: ListView.builder(
                        itemBuilder: (_, __) {
                          return containerView(
                              snap.data![__].imageHotel,
                              " * 4.4",
                              snap.data![__].nameHotel.toString(),
                              snap.data![__].nameHotel,
                              "gym",
                              "free",
                              snap.data![__].price.toString());
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}