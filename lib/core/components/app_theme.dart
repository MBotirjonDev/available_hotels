import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class AppTheme {
  static final darktheme = ThemeData(
    scaffoldBackgroundColor: MainColor.kGreyBottom,
    colorScheme: const ColorScheme.dark(),
  );
  static final lighttheme = ThemeData(
    scaffoldBackgroundColor: MainColor.kBlack,
    colorScheme: const ColorScheme.light(),
  );
}