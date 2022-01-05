import 'package:bookinghotel/core/widgets/bottom_nav_bar.dart';
import 'package:bookinghotel/providers/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (context) => BottomNavBarProvider(),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: HotelBottomNavBar(
            model: model,
          ),
        ),
      ),
      // builder: (context) => BottomProvier(),
    );
  }
}