import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const images = 'assets/images/';
const icons = 'assets/icons/';

const kBlue = Color(0xFF3452B5);
const kBlack = Color(0xFF1F1F1F);
const kWhite = Color(0xFFFFFFFF);
const kGrey = Color(0xFFF2F2F2);
const kRed = Color(0xFFFF0000);
const kGreen = Color(0xFF14AE5C);
const kLightBlue = Color(0xFF0D99FF);
const kYellow = Color(0xFFFFC700);
const kYellowTransparent = Color(0xFFFFD19D);
const kDarkerBlue = Color(0xFF1488CC);
const kDarkerBlueTransparent = Color(0xFF9ED6FF);
const kDeactivateColor = Color(0xFFA1A1A1);
const kStroke = Color(0xFF949494);
const kStrokeBorder = Color(0xFFEAEAEA);
const kStrokeClub = Color(0xFFD9D9D9);

final kDefaultPadding = EdgeInsets.symmetric(horizontal: 20.sp);
final kCornerRadius = 10.sp;
final kBorderRadius = BorderRadius.all(Radius.circular(kCornerRadius));

final kContainerBorder = Border.all(
  color: kStrokeBorder,
  style: BorderStyle.solid,
  width: 1,
  strokeAlign: BorderSide.strokeAlignOutside,
);

final kContainerBorderClub = Border.all(
  color: kStrokeClub,
  style: BorderStyle.solid,
  width: 1,
  strokeAlign: BorderSide.strokeAlignOutside,
);

final kTextInputOutline = OutlineInputBorder(
  borderSide: const BorderSide(
    color: kStroke,
    style: BorderStyle.solid,
    width: 1,
    strokeAlign: BorderSide.strokeAlignInside,
  ),
  borderRadius: kBorderRadius,
);
final kTextInputOutlineFocus = OutlineInputBorder(
  borderSide: const BorderSide(
    color: kBlue,
    style: BorderStyle.solid,
    width: 1,
    strokeAlign: BorderSide.strokeAlignInside,
  ),
  borderRadius: kBorderRadius,
);
final kTextInputOutlineError = OutlineInputBorder(
  borderSide: const BorderSide(
    color: kRed,
    style: BorderStyle.solid,
    width: 1,
    strokeAlign: BorderSide.strokeAlignInside,
  ),
  borderRadius: kBorderRadius,
);

const String uri = 'http://192.168.8.104:5000/api';
const String socketUri = "https://localserver:5000/";

String? validateEmail(String? value) {
  // String pattern = r'^[A-Za-z0-9._%+-]+@(admin.|etu.)?.usthb.dz$';
  // RegExp regex = RegExp(pattern);
  // if (value == null || value.isEmpty || !regex.hasMatch(value)) {
  //   return 'Enter Valid Email';
  // } else {
  //   return null;
  // }
  return null;
}

String? validatePassword(String? value) {
  if (value == null) {
    return 'Please enter password';
  } else if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (value.length < 10) {
      return 'Password  must be of 10 character';
    } else {
      return null;
    }
  }
}
