import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle buildToolbarTitleTextStyle() {
  return TextStyle(
      color: const Color(0xffffffff), fontWeight: FontWeight.w700, fontFamily: "UTMNeoSansIntel", fontStyle: FontStyle.normal, fontSize: 22.0.sp);
}

TextStyle buildSearchHintTextStyle() {
  return TextStyle(
      color: const Color(0xffffffff), fontWeight: FontWeight.w400, fontFamily: "UTMNeoSansIntel", fontStyle: FontStyle.italic, fontSize: 15.0.sp);
}

TextStyle buildStaffNameTextStyle() {
  return TextStyle(
      color: const Color(0xff000000), fontWeight: FontWeight.w700, fontFamily: "UTMNeoSansIntel", fontStyle: FontStyle.normal, fontSize: 15.0.sp);
}

TextStyle buildInfoDescriptionTextStyle() {
  return TextStyle(
      color: const Color.fromRGBO(0, 0, 0, 0.6),
      fontWeight: FontWeight.w400,
      fontFamily: "UTM-Neo-Sans-Intel",
      fontStyle: FontStyle.normal,
      fontSize: 13.0.sp);
}

TextStyle buildInfoTitleTextStyle() {
  return TextStyle(
      color: const Color(0xff000000), fontWeight: FontWeight.w400, fontFamily: "UTM-Neo-Sans-Intel", fontStyle: FontStyle.normal, fontSize: 13.0.sp);
}

TextStyle buildDivisionTagTextStyle(Color textColor) {
  return TextStyle(color: textColor, fontSize: 11.sp, fontWeight: FontWeight.w400, fontFamily: "UTM-Neo-Sans-Intel", fontStyle: FontStyle.normal);
}

TextStyle buildFilterTitleTextStyle() {
  return TextStyle(
      color: const Color(0xff000000), fontWeight: FontWeight.w700, fontFamily: "UTMNeoSansIntel", fontStyle: FontStyle.normal, fontSize: 17.0.sp);
}

TextStyle buildTitleDialogTextStyle() {
  return TextStyle(
      color: const Color(0xff00132d), fontWeight: FontWeight.w700, fontFamily: "UTMNeoSansIntel", fontStyle: FontStyle.normal, fontSize: 19.0.sp);
}

TextStyle buildDefaultTextFilterDialogTextStyle(){
  return TextStyle(
      color: const Color(0xff00132d),
      fontWeight: FontWeight.w400,
      fontFamily: "UTM-Neo-Sans-Intel",
      fontStyle: FontStyle.normal,
      fontSize: 15.0.sp);
}

TextStyle buildConfirmFilterTextStyle(){
  return TextStyle(
      color:  const Color(0xffffffff),
      fontWeight: FontWeight.w700,
      fontFamily: "UTMNeoSansIntel",
      fontStyle:  FontStyle.normal,
      fontSize: 15.0.sp
  );
}