import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/models/hotel_model.dart';
import 'package:bookinghotel/services/hotel_services.dart';
import 'package:flutter/material.dart';
import './room_page_view_model.dart';

class RoomPageView extends RoomPageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kOffWhite,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: MainColor.kWhite,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            const
            Icon(Icons.arrow_back_ios_outlined);
          },
        ),
        title: const Text("Room Service",style: TextStyle(color: MainColor.kBlack),),
      ),
      body: FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context, AsyncSnapshot<List<HotelsAvailable>> snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snap.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (_, __) {
                return SizedBox(
                  height: getProportionateScreenHeight(430),
                  width: getProportionateScreenWidth(400.0),
                  child: hotelInfo(
                    snap.data![__].imageHotel.toString(),
                    snap.data![__].nameHotel.toString(),
                    snap.data![__].price.toString(),
                    snap.data![__].nightDrop.toString(),
                  ),
                );
              },
              scrollDirection: Axis.vertical,
              itemCount: snap.data!.length,
            );
          }
        },
      ),
    );
  }
}