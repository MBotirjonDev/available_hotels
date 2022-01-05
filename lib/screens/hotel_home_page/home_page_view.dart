import 'package:bookinghotel/core/components/container_view_second.dart';
import 'package:bookinghotel/core/components/drop_down_view.dart';
import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/components/text_form_field.dart';
import 'package:bookinghotel/core/components/text_view.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/models/hotel_model.dart';
import 'package:bookinghotel/providers/text_form_provider.dart';
import 'package:bookinghotel/screens/hotel_search_room_page/search_room_page.dart';
import 'package:bookinghotel/services/hotel_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context, AsyncSnapshot<List<HotelsAvailable>> snap) {
         // print(HotelService().getHotel().toString());
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            // debugPrint(snap.data.toString());
            return SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: MainColor.kWhite,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: getProportionateScreenHeight(375),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(86),
                            left: getProportionateScreenWidth(16),
                            right: getProportionateScreenWidth(16),
                            bottom: getProportionateScreenHeight(96.0),
                          ),
                          child: Text(
                            "Find place that gives\n you ultimate calm",
                            style: GoogleFonts.nunito(
                                fontSize: getProportionateScreenWidth(36),
                                fontWeight: FontWeight.w400,
                                color: MainColor.kWhite),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(300)),
                          child: Container(
                            height: getProportionateScreenHeight(294),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(
                                  getProportionateScreenWidth(30),
                                ),
                              ),
                              color: MainColor.kBlack19,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height:
                                          getProportionateScreenHeight(60.0),
                                      width: getProportionateScreenWidth(220),
                                      margin: EdgeInsets.only(
                                        top: getProportionateScreenHeight(30),
                                        bottom:
                                            getProportionateScreenHeight(10.0),
                                        left: getProportionateScreenWidth(10),
                                        right: getProportionateScreenWidth(10),
                                      ),
                                      child: textFormfield(
                                          "Place",
                                          TextFormfieldProvider
                                              .placeController),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: -1,
                                            blurRadius: 7,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(50),
                                        color: MainColor.kBlack19,
                                      ),
                                      height:
                                          getProportionateScreenHeight(60.0),
                                      width: getProportionateScreenWidth(102),
                                      margin: EdgeInsets.only(
                                        left: getProportionateScreenWidth(10),
                                        top: getProportionateScreenHeight(30),
                                        right: getProportionateScreenHeight(10),
                                      ),
                                      child: DropDown.dropdownButton(
                                          DropDown.dropdownItems,
                                          DropDown.selectValue),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height:
                                          getProportionateScreenHeight(60.0),
                                      width: getProportionateScreenWidth(220),
                                      margin: EdgeInsets.only(
                                        top: getProportionateScreenHeight(10),
                                        bottom:
                                            getProportionateScreenHeight(10.0),
                                        left: getProportionateScreenWidth(10),
                                        right: getProportionateScreenWidth(10),
                                      ),
                                      child: textFormfield("Date",
                                          TextFormfieldProvider.dateController),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: -1,
                                            blurRadius: 7,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(50),
                                        color: MainColor.kBlack19,
                                      ),
                                      height:
                                          getProportionateScreenHeight(60.0),
                                      width: getProportionateScreenWidth(102),
                                      margin: EdgeInsets.only(
                                        left: getProportionateScreenWidth(10),
                                        right: getProportionateScreenWidth(
                                          10,
                                        ),
                                        top: getProportionateScreenHeight(10),
                                      ),
                                      // for drop down
                                      child: DropDown.dropdownButton(
                                          DropDown.dropdownItems2,
                                          DropDown.selectValue2),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => SearchRoomPage()));
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
                                    child: Text("Search a Room",
                                        style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          color: MainColor.kGreyLight,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: getProportionateScreenWidth(200.0),
                        top: getProportionateScreenHeight(10),
                        bottom: getProportionateScreenHeight(10),
                      ),
                      child: textView("Recomended", MainColor.kGrey, 25.0, "",
                          FontWeight.normal),
                    ),
                    Center(
                        child: SizedBox(
                            height: getProportionateScreenHeight(150.0),
                            child: ListView.builder(
                              itemBuilder: (_, __) {
                                print("Data bor ###############");
                                return containerView2(
                                  
                                    snap.data![__].nameHotel.toString(),
                                    snap.data![__].nameMountain.toString());
                              },
                              itemCount: snap.data!.length,
                              scrollDirection: Axis.horizontal,
                            ))),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}