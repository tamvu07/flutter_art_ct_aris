import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/common/utils/constants.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_constants.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository_impl.dart';

import '../bloc/leave_bloc.dart';

class LeaveDetailsDialog extends Dialog {
  final LeaveDetails _details;
  final bool _fromMyLeave;
  final LeaveDataRepository _repository = LeaveDataRepositoryImpl();

  LeaveDetailsDialog(this._details, this._fromMyLeave, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 668.h,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              height: 648.h,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                        width: 200.w,
                        child: Text(_details.getCreateName(),
                            style: TextStyle(color: Colors.black, fontSize: 17.sp, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
                  ),
                  SizedBox(height: 35.h),
                  SizedBox(
                    height: 22.h,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: LeaveTypeColors.values.firstWhere((element) => element.info.id == _details.getLeaveTypeId()).info.bgColor,
                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 17.w),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r))),
                      onPressed: () {},
                      child: Text(_details.getLeaveTypeName(), style: TextStyle(color: Colors.white, fontSize: 13.sp, fontWeight: FontWeight.normal)),
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(_details.getTitle(),
                          style: TextStyle(color: const Color(0xff73757c), fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontSize: 15.sp),
                          textAlign: TextAlign.left),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 2.w,
                        children: [
                          Image.asset('assets/icons/ic_time.png', width: 10.w, height: 10.w),
                          Text('${_details.getDue().toDouble()}h',
                              style: TextStyle(color: const Color.fromRGBO(13, 2, 255, 1), fontSize: 15.sp, fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                  _buildDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.leaveSectionStartDate,
                          style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      Text(
                        _details.getStartDate()?.format(Constant.displayDateTimePattern) ?? '',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      )
                    ],
                  ),
                  _buildDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.leaveSectionEndDate,
                          style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      Text(
                        _details.getEndDate()?.format(Constant.displayDateTimePattern) ?? '',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      )
                    ],
                  ),
                  _buildDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.leaveSectionStatus,
                          style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      Text(
                        _details.getLeaveStatusName(),
                        style: TextStyle(
                            color: LeaveStatusColors.values.firstWhere((element) => element.info.id == _details.getLeaveStatusId()).info.textColor,
                            fontSize: 15.sp),
                      )
                    ],
                  ),
                  _buildDivider(),
                  Text(AppLocalizations.of(context)!.leaveSectionAssignee, style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 7.h),
                  Text(
                    _details.getAssignees().join(", "),
                    style: TextStyle(color: Colors.black, fontSize: 15.sp, height: 1.2),
                  ),
                  _buildDivider(),
                  Text(AppLocalizations.of(context)!.leaveSectionReason, style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 7.h),
                  Text(
                    _details.getDescription(),
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                  SizedBox(height: 20.h),
                  _buildActionButtons(context)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 100.w,
                height: 40.h,
                // alignment: Alignment.center,
                // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
                child: TextButton(
                    onPressed: () {
                      context.dismissDialog();
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))),
                    child: Text(AppLocalizations.of(context)!.close, style: TextStyle(color: Colors.black, fontSize: 15.sp))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    if (_fromMyLeave) {
      return _details.getLeaveStatusId() == LeaveStatusColors.newStatus.info.id
          ? Center(
              child: SizedBox(
                height: 44.h,
                width: 144.w,
                child: ElevatedButton(
                    onPressed: () => _handleCancelAction(context),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(13, 2, 255, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r))),
                    child: Text(AppLocalizations.of(context)!.leaveCancelForm,
                        style: TextStyle(color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.normal))),
              ),
            )
          : Container();
    } else {
      return _details.getLeaveStatusId() == LeaveStatusColors.newStatus.info.id
          ? Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 44.h,
                    width: 144.w,
                    child: ElevatedButton(
                        onPressed: () => _handleRejectAction(context),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r))),
                        child: Text(AppLocalizations.of(context)!.leaveManagerReject,
                            style: TextStyle(color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.normal))),
                  ),
                  SizedBox(width: 20.w),
                  SizedBox(
                    height: 44.h,
                    width: 144.w,
                    child: ElevatedButton(
                        onPressed: () => _handleApproveAction(context),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r))),
                        child: Text(AppLocalizations.of(context)!.leaveManagerApprove,
                            style: TextStyle(color: Colors.white, fontSize: 15.sp, fontWeight: FontWeight.normal))),
                  )
                ],
              ),
            )
          : Container();
    }
  }

  void _handleCancelAction(BuildContext context) {
    context.showLoadingDialog();
    _repository.deleteLeave(LeaveDeleteRequest(id: _details.getLeaveId())).then((value) => {
          value.when(
            success: (data) {
              context.dismissDialog();
              Navigator.of(context).pop(1);
            },
            failure: (error) {
              context.dismissDialog();
              context.showErrorDialog(error.getErrorMsg());
            },
          )
        });
  }

  void _handleApproveAction(BuildContext context) {
    context.showLoadingDialog();
    _repository.postManagerAction(LeaveActionRequest(id: _details.getLeaveId(), type: LeaveActionType.approve.action)).then((value) => {
          value.when(
            success: (data) {
              context.dismissDialog();
              Navigator.of(context).pop(1);
            },
            failure: (error) {
              context.dismissDialog();
              context.showErrorDialog(error.getErrorMsg());
            },
          )
        });
  }

  void _handleRejectAction(BuildContext context) {
    context.showLoadingDialog();
    _repository.postManagerAction(LeaveActionRequest(id: _details.getLeaveId(), type: LeaveActionType.reject.action)).then((value) => {
          value.when(
            success: (data) {
              context.dismissDialog();
              Navigator.of(context).pop(1);
            },
            failure: (error) {
              context.dismissDialog();
              context.showErrorDialog(error.getErrorMsg());
            },
          )
        });
  }

  Container _buildDivider() => Container(margin: EdgeInsets.symmetric(vertical: 18.h), child: Divider(color: const Color(0x99707070), height: 1.h));
}
