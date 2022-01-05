

import 'package:bookinghotel/screens/hotel_home_page/home_page.dart';
import 'package:bookinghotel/screens/hotel_notifications_page/notifications_page.dart';
import 'package:bookinghotel/screens/hotel_profile_page/profile_page.dart';
import 'package:bookinghotel/screens/hotel_search_page/search_page.dart';
import 'package:flutter/material.dart';


class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final screens = [
    const HomePage(),
    SearchPage(),
     const NotificationsPage(),
    const ProfilePage(),
  ];
  set currentTab(int tab) {
    _currentIndex = tab;
    notifyListeners();
  }

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get currentTab => _currentIndex;
  get currentScreens => screens[_currentIndex];
}