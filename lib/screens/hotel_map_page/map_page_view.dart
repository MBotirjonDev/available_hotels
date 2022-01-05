import 'package:bookinghotel/core/components/container_view_second.dart';
import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/models/hotel_model.dart';
import 'package:bookinghotel/screens/hotel_map_page/map_page_view_model.dart';
import 'package:bookinghotel/screens/hotel_room_page/room_page.dart';
import 'package:bookinghotel/services/hotel_services.dart';
import 'package:flutter/material.dart';

class MapPageView extends MapPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
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
            // debugPrint(snap.data.toString());
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  drowDOnwMethod(context),
                  divider(),
                  bottomView(context),
                  divider(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    height: getProportionateScreenHeight(655),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                      height: getProportionateScreenHeight(150.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => RoomPage()));
                        },
                        child: ListView.builder(
                          itemBuilder: (_, __) {
                            return containerView2(snap.data![__].imageHotel,
                                snap.data![__].nameHotel);
                          },
                          itemCount: snap.data!.length,
                          scrollDirection: Axis.horizontal,
                        ),
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