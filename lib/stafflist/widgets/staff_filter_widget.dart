import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/stafflist/bloc/staff_list_data_bloc.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/theme/text_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/stafflist/widgets/staff_list_widget.dart';

class StaffFilterWidget extends StatefulWidget {
  const StaffFilterWidget({
    Key? key,
    required this.bottomSheetHeight,
    required this.departments,
  }) : super(key: key);
  final double bottomSheetHeight;
  final List<Departments> departments;

  @override
  State<StatefulWidget> createState() {
    return StaffFilterState();
  }
}

class StaffFilterState extends State<StaffFilterWidget> {
  DropDownItem? _selectedGender;
  DropDownItem? _selectedDepartment;

  @override
  Widget build(BuildContext context) {
    List<DropDownItem> departmentsDropDown = widget.departments.map((e) => DropDownItem(e.id!, e.name.toString())).toList();
    if (StaffListSearchFilterWidget.genderId == 1) {
      _selectedGender = DropDownItem(1, AppLocalizations.of(context)!.staffListMale);
    } else if (StaffListSearchFilterWidget.genderId == 0) {
      _selectedGender = DropDownItem(0, AppLocalizations.of(context)!.staffListFemale);
    }
    if (StaffListSearchFilterWidget.departmentId != -1) {
      _selectedDepartment = widget.departments
          .map((e) => DropDownItem(e.id!, e.name.toString()))
          .firstWhere((element) => element.id == StaffListSearchFilterWidget.departmentId);
    }
    return SizedBox(
      height: widget.bottomSheetHeight,
      child: Padding(
        padding: EdgeInsets.only(bottom: 60.h),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
                alignment: Alignment.center,
                width: 46.w,
                height: 4.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.r)), color: const Color(0xffa2a2a2))),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      child: Image.asset(
                        'assets/icons/ic_close.png',
                        width: 33.w,
                        height: 33.h,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      AppLocalizations.of(context)!.staffListFilterDialogTitle,
                      style: buildTitleDialogTextStyle(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        StaffListSearchFilterWidget.genderId = -1;
                        StaffListSearchFilterWidget.departmentId = -1;
                        _selectedGender = null;
                        _selectedDepartment = null;
                      });
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        AppLocalizations.of(context)!.staffListFilterDialogDefault,
                        style: buildDefaultTextFilterDialogTextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
            Container(width: double.infinity, decoration: BoxDecoration(border: Border.all(color: const Color(0xffdddddd), width: 1))),
            SizedBox(height: 23.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: widget.bottomSheetHeight - 200.h - 20.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.staffListOffice, style: buildFilterTitleTextStyle()),
                    SizedBox(
                      height: 12.h,
                    ),
                    DropDownFilterItemWidget(
                      hint: AppLocalizations.of(context)!.staffListFilterDepartmentHint,
                      onChangedFunc: (p0) {
                        setState(() {
                          StaffListSearchFilterWidget.departmentId = p0.id;
                          _selectedDepartment = p0;
                        });
                      },
                      selectedItem: _selectedDepartment,
                      items: departmentsDropDown,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(AppLocalizations.of(context)!.staffListFilterGenderTitle, style: buildFilterTitleTextStyle()),
                    SizedBox(
                      height: 12.h,
                    ),
                    DropDownFilterItemWidget(
                      hint: AppLocalizations.of(context)!.staffListFilterGenderHint,
                      onChangedFunc: (p0) {
                        setState(() {
                          StaffListSearchFilterWidget.genderId = p0.id;
                          _selectedGender = p0;
                        });
                      },
                      selectedItem: _selectedGender,
                      items: [
                        DropDownItem(1, AppLocalizations.of(context)!.staffListMale),
                        DropDownItem(0, AppLocalizations.of(context)!.staffListFemale)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: () {
                    var genderId = -1;
                    if (_selectedGender != null) {
                      genderId = _selectedGender!.id;
                    }
                    var departmentId = -1;
                    if (_selectedDepartment != null) {
                      departmentId = _selectedDepartment!.id;
                    }
                    Navigator.pop(context, StaffFilterModel(genderId, departmentId));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(13, 0, 255, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                  child: Text(AppLocalizations.of(context)!.staffListFilterDialogApplyTitle),
                ),
              ),
            )
          ],
        ),
      ), //could change this to Color(0xFF737373),
      //so you don't have to change MaterialApp canvasColor
    );
  }
}

class DropDownFilterItemWidget extends StatelessWidget {
  const DropDownFilterItemWidget({Key? key, this.hint, this.items, required this.onChangedFunc, this.selectedItem}) : super(key: key);
  final String? hint;
  final List<DropDownItem>? items;
  final Function(DropDownItem) onChangedFunc;
  final DropDownItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.infinity,
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.black, width: 1),
        gradient: const LinearGradient(
            colors: [Color.fromRGBO(255, 255, 255, 1), Color.fromRGBO(230, 230, 230, 1)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: DropdownButtonHideUnderline(
        child: selectedItem == null
            ? DropdownButton<DropDownItem>(
                isExpanded: true,
                items: items
                    ?.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.description),
                        ))
                    .toList(),
                onChanged: (value) {
                  onChangedFunc(value!);
                },
                icon: Image.asset('assets/icons/ic_dropdown.png', width: 16.w, height: 14.h),
                elevation: 16,
                hint: Text(hint ?? "", style: TextStyle(fontSize: 16.sp, color: Colors.grey, fontStyle: FontStyle.italic)),
              )
            : DropdownButton<DropDownItem>(
                isExpanded: true,
                value: selectedItem,
                items: items
                    ?.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.description),
                        ))
                    .toList(),
                onChanged: (value) {
                  onChangedFunc(value!);
                },
                icon: Image.asset('assets/icons/ic_dropdown.png', width: 16.w, height: 14.h),
                elevation: 16,
                hint: Text(hint ?? "", style: TextStyle(fontSize: 16.sp, color: Colors.grey, fontStyle: FontStyle.italic)),
              ),
      ),
    );
  }
}

class DropDownItem {
  const DropDownItem(this.id, this.description);

  final int id;
  final String description;

  bool operator ==(dynamic other) => other != null && other is DropDownItem && id == other.id;

  @override
  int get hashCode => super.hashCode;
}
