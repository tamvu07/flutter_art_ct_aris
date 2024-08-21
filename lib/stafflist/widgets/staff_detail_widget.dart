import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/widgets/staff_list_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:simple_tags/simple_tags.dart';

import '../theme/text_theme.dart';

class StaffDetailWidget extends StatelessWidget {
  final EmployeeData? staff;

  const StaffDetailWidget({
    Key? key,
    this.staff,
  }) : super(key: key);

  String processGetStaffImage() {
    final imageUrls = staff?.employeeImages;
    var imageUrl = "";
    if (imageUrls?.isNotEmpty == true && imageUrls != null) {
      imageUrl =
          imageUrls[0].imageUrl ?? "https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483141.jpg";
    } else {
      imageUrl = "https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483141.jpg";
    }
    return imageUrl;
  }

  String processGetStaffPosition() {
    final department = staff?.departments;
    var position = "";
    if (department?.isNotEmpty == true && department != null) {
      position = department[0].name?.replaceAll("(?i)divison", "") ?? "N/A";
    } else {
      position = "N/A";
    }
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 45.w,
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 75.h),
                child: Container(
                  height: 458.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50.r)), color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 547.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 165.h,
                      width: 183.w,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: CircularImageWidget(
                              imageLink: processGetStaffImage(),
                              height: 150.h,
                              width: 150.h,
                              borderWidth: 2,
                              borderRadius: 75.r,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 36.h,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18.r)), color: const Color(0xff000000)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lv. ${staff?.employeeProfiles?.exp ?? 0}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 20.h),
                      child: SizedBox(
                        height: 300.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(staff?.employeeProfiles?.fullname ?? "", style: buildStaffNameTextStyle()),
                            SizedBox(height: 12.h),
                            InfoStaffWidget(
                              title: AppLocalizations.of(context)!.staffListPosition,
                              description: processGetStaffPosition(),
                            ),
                            SizedBox(height: 5.h),
                            InfoStaffWidget(
                              title: AppLocalizations.of(context)!.staffListEmail,
                              description: staff?.employeeProfiles?.email ?? "",
                            ),
                            SizedBox(height: 5.h),
                            InfoStaffWidget(
                              title: AppLocalizations.of(context)!.staffListPhone,
                              description: staff?.employeeProfiles?.phone ?? "",
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              AppLocalizations.of(context)!.staffListOffice,
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            SizedBox(height: 5.h),
                            Expanded(
                              child: DepartmentTagWidget(staff: staff),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 102.w,
                      height: 39.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(
                            Radius.circular(20.r)
                        ))),
                        child: Text(
                          AppLocalizations.of(context)!.staffListCloseDialog,
                          style: TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "UTM-Neo-Sans-Intel",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DepartmentTagWidget extends StatelessWidget {
  const DepartmentTagWidget({
    Key? key,
    required this.staff,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  final EmployeeData? staff;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SimpleTags(
      content: staff?.departments?.map((e) => e.name ?? "").toList() ?? [],
      wrapSpacing: 4,
      wrapRunSpacing: 4,
      tagContainerPadding: EdgeInsets.only(left: 11.w, right: 11.w, top: 6.h, bottom: 6.h),
      tagTextStyle: TextStyle(color: textColor ?? const Color.fromRGBO(0, 124, 19, 1), fontSize: 13.sp),
      tagContainerDecoration: BoxDecoration(
        color: backgroundColor ?? const Color.fromRGBO(198, 255, 215, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
      ),
    );
  }
}

class DivisionTagItemWidget extends StatelessWidget {
  final String? department;
  final Color? backgroundColor;
  final Color? textColor;

  const DivisionTagItemWidget({Key? key, this.department, this.backgroundColor, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25.h,
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      decoration: BoxDecoration(color: backgroundColor ?? const Color.fromRGBO(198, 255, 215, 1), borderRadius: BorderRadius.circular(13)),
      child: Text(
        department ?? "",
        overflow: TextOverflow.ellipsis,
        style: buildDivisionTagTextStyle(textColor ?? const Color.fromRGBO(0, 124, 19, 1)),
      ),
    );
  }
}
