import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter/material.dart';

class stepper{
   static List<Icon> iconlist(int activeStep) {
    return [
      Icon(Icons.text_fields,
          color: activeStep == 0 ? MainColor.pink : MainColor.kGreyDark),
      Icon(Icons.credit_card,
          color: activeStep == 1 ? MainColor.pink : MainColor.kGreyDark),
      Icon(Icons.document_scanner,
          color: activeStep == 2 ? MainColor.pink : MainColor.kGreyDark),
    ];
  }

  String headerText(int activeStep) {
    switch (activeStep) {
      case 1:
        return 'Preface';
      case 2:
        return 'Table of Contents';
      case 3:
        return 'About the Author';
      default:
        return 'Introduction';
    }
  }
}