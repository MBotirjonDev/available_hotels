import 'package:bookinghotel/core/constants/colors.dart';
import 'package:bookinghotel/core/constants/icons.dart';
import 'package:bookinghotel/providers/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HotelBottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  HotelBottomNavBar({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0
              ? SvgPicture.asset(
                  IconName.homeActive,
                  color: MainColor.pink,
                )
              : SvgPicture.asset(IconName.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1
              ? SvgPicture.asset(IconName.searchActive, color: MainColor.pink)
              : SvgPicture.asset(IconName.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2
              ? SvgPicture.asset(IconName.notificationActive,
                  color: MainColor.pink)
              : SvgPicture.asset(IconName.notification),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3
              ? SvgPicture.asset(
                  IconName.profileActive,
                  color: MainColor.pink,
                )
              : SvgPicture.asset(IconName.profile),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      enableFeedback: true,
      currentIndex: _context.currentTab,
      onTap: (int idxex) {
        model!.currentTab = idxex;
      },
    );
  }
}
