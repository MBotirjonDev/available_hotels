import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class AppBarView {
  static AppBar myAppBar(
    
    String title,
    Color color,
    leading,
  ) =>
      AppBar(
        leading: leading,
        title: Text(
          title,
          style: TextStyle(color: MainColor.kblackW),
        ),
        backgroundColor: color,
        elevation: 0,
      );
}