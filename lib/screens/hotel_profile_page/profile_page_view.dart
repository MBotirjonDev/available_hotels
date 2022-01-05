import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/core/constants/icons.dart';
import 'package:bookinghotel/screens/hotel_help_page/help_page.dart';
import 'package:bookinghotel/screens/hotel_payment_page/payment_page.dart';
import 'package:bookinghotel/screens/hotel_profile_your_favorite_page/your_favorite_page.dart';
import 'package:bookinghotel/screens/hotel_promotions_page/promotions_page.dart';
import 'package:bookinghotel/screens/hotel_settings_page/settings_page.dart';
import 'package:flutter/material.dart';
import './profile_page_view_model.dart';

class ProfilePageView extends ProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: MainColor.kWhite,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            profileMethod(
                "https://images.unsplash.com/photo-1640558378987-74741517e220?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                "Nimadur ism"),
            settingMethod(IconName.yourFavorite, "Your Favorite", YourFavoritePage()),
            settingMethod(IconName.payment, "Payments", PaymentPage()),
            settingMethod(IconName.help, "Help", HelpPage()),
            settingMethod(IconName.promotions, "Promotions", PromotionsPage()),
            settingMethod(IconName.setting, "Settings", SettingPage()),
          ],
        ),
      ),
    );
  }

  
}