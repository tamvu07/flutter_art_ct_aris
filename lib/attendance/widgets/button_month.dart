import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonMonth extends StatelessWidget {
  final String btnText;
  bool isSelected = false;
  final Function({required int pos, required bool isAddNewStreamValue}) onClick;
  final int position;
  ButtonMonth({Key? key, required this.btnText, required this.isSelected, required this.onClick, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104.w,
      height: 44.h,
      margin: const EdgeInsets.only(right: 5).r,
      child: TextButton(
        onPressed: () {
          onClick(pos: position, isAddNewStreamValue: true);
        },
        style: TextButton.styleFrom(foregroundColor: isSelected ? Colors.black : Colors.white, shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(20)).r), side: BorderSide(color: Colors.white, width: 0.85.r), backgroundColor: isSelected ? Colors.white : Colors.black, alignment: AlignmentDirectional.center),
        child: Padding(
          padding: const EdgeInsets.all(2).r,
          child: Text(
            btnText,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
