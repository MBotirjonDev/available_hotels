import 'package:flutter/material.dart';

class ReservationProvider extends ChangeNotifier{
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();
  static TextEditingController emailcontroller = TextEditingController();
  static TextEditingController adresscontroller = TextEditingController();
  static TextEditingController postCodecontroller = TextEditingController();
  static TextEditingController countrycontroller = TextEditingController();
  static TextEditingController phonecontroller = TextEditingController();

  @override
  notifyListeners();
}