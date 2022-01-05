import 'package:bookinghotel/core/components/const_value.dart';
import 'package:bookinghotel/core/components/list_tile.dart';
import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './filter_page_view_model.dart';

class FilterPageView extends FilterPageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new,color: MainColor.kBlacText,),
        ),
        title: const Text("Filter",style: TextStyle(color: MainColor.kBlacText),),
        actions: [TextButton(onPressed: (){}, child: const Text("Reset",style: TextStyle(color: Colors.black),))],
        
      ),
      body: Column(
        children: [const Divider(
                  height: 4.0,
                  color: MainColor.kOffWhite,
                ),
                listtileforfilter("Your budget"),
                listtileforfilter("Star Rating"),
                listtileforfilter("Review score"),
                listtileforfilter("Meals"),
                listtileforfilter("Hotel", trailing: "Hotel"),
                switchlisttile("Breakfast Included", Types.valueforbreakfast),
                switchlisttile("Deals", Types.valueforDeals),
                switchlisttile("Only show available", Types.valueforShow),
                
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>  Container()));
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
                                    child: Text("Apply",
                                        style: GoogleFonts.nunito(
                                          fontSize: 18,
                                          color: MainColor.kGreyLight,
                                        )),
                                  ),
                                )
                )
              ],
            ));
          
      
      
  }}