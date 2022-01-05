// ignore_for_file: non_constant_identifier_names

import 'package:bookinghotel/core/components/size_config.dart';
import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown {
  static String selectValue = "Guests";
  static String selectValue2 = "Night";
  static String selectValue3 = "Sf, USA - 2 guest - Jan 18 - Jan 23";
  static List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Guests"), value: "Guests"),
      DropdownMenuItem(child: Text("One"), value: "One"),
      DropdownMenuItem(child: Text("Family"), value: "Family"),
      DropdownMenuItem(child: Text("Couple"), value: "Couple"),
    ];
    return menuItems;
  }

  static List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Night"), value: "Night"),
      DropdownMenuItem(child: Text("Day"), value: "Day"),
      DropdownMenuItem(child: Text("Week"), value: "Week"),
      DropdownMenuItem(child: Text("Month"), value: "Month"),
    ];
    return menuItems;
  }

  static List<DropdownMenuItem<String>> get dropdwnItems3 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(
        child: Text('Sf, USA - 2 guest - Jan 18 - Jan 23'),
        value: "Sf, USA - 2 guest - Jan 18 - Jan 23",
      ),
      DropdownMenuItem(
        child: Text('Sf, USA - 3 guest - Jan 20 - Jan 27'),
        value: "Sf, USA - 2 guest - Jan 20 - Jan 27",
      ),
      DropdownMenuItem(
        child: Text('Sf, USA - 6 guest - Jan 23 - Jan 30'),
        value: "Sf, USA - 2 guest - Jan 23 - Jan 30",
      ),
      DropdownMenuItem(
        child: Text('Sf, USA - 10 guest - Jan 24 - Jan 31'),
        value: "Sf, USA - 2 guest - Jan 24 - Jan 31",
      ),
    ];
    return menuItems;
  }

  static DropdownButtonFormField<String> dropdownButton(
      var items, var Selectvalue) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
      elevation: 10,
      style: GoogleFonts.nunito(
          fontSize: getProportionateScreenHeight(14),
          fontWeight: FontWeight.bold,
          color: MainColor.kGrey),
      value: Selectvalue,
      dropdownColor: MainColor.kBlack19,
      items: items,
      onChanged: (String? value) {},
    );
  }

  static DropdownButtonFormField<String> dropdownButton2(
      var items, var Selectvalue) {
    return DropdownButtonFormField(
      
      elevation: 99,
      style: GoogleFonts.nunito(
          fontSize: getProportionateScreenHeight(14),
          fontWeight: FontWeight.bold,
          color: MainColor.kBlack19),
      value: Selectvalue,
      dropdownColor: MainColor.kOffWhite,
      items: items,
      onChanged: (String? value) {},
    );
  }
}