import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mobile_aris_management_tool/common/utils/constants.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/bloc/leave_bloc.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_constants.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/leave_details_widget.dart';

import '../../common/widgets/loading_dialog.dart';
import 'my_leave_widget.dart';

class RequestLeavesWidget extends StatefulWidget {
  const RequestLeavesWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RequestLeaveState();
  }
}

class RequestLeaveState extends State<RequestLeavesWidget> {
  List<LeaveManagerData>? _preLeaveManagerData;

  @override
  void initState() {
    super.initState();
    context.read<LeaveActionBloc>().stream.listen((event) {
      switch (event.runtimeType) {
        case LeaveManagerActionLoading:
          context.showLoadingDialog();
          break;
        case LeaveManagerActionSuccess:
          context.dismissDialog();
          context.read<LeaveBloc>().add(GetMyLeavesEvent());
          break;
        case LeaveManagerActionFailure:
          context.dismissDialog();
          context.showErrorDialog((event as LeaveManagerActionFailure).error.getErrorMsg());
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaveBloc, LeaveState>(
      builder: (context, state) {
        if (state is MyLeaveSuccess) {
          _preLeaveManagerData = state.leaveManagerData;
        }
        return ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context) => LeaveDetailsDialog(_preLeaveManagerData![index], false)).then((value) => {
                          if (value == 1) {context.read<LeaveBloc>().add(GetMyLeavesEvent())}
                        });
                  },
                  child: _buildItemWidget(_preLeaveManagerData![index]));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
            itemCount: _preLeaveManagerData?.length ?? 0);
      },
    );
  }

  Widget _buildItemWidget(LeaveManagerData item) {
    String startDate = DateFormat(Constant.displayDateTimePattern).format(DateTime.parse(item.startDate!));
    String endDate = DateFormat(Constant.displayDateTimePattern).format(DateTime.parse(item.endDate!));
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$startDate - $endDate',
                style: const TextStyle(color: Colors.black, fontSize: 13),
              ),
              Container(
                height: 22,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(color: item.statusColor.bgColor, borderRadius: BorderRadius.circular(11)),
                alignment: Alignment.center,
                child: Text('Chờ duyệt', style: TextStyle(color: item.statusColor.textColor, fontSize: 12)),
              )
            ],
          ),
          const SizedBox(height: 5),
          Container(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      item.title ?? "",
                      style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset('assets/icons/ic_time.png', width: 10, height: 10),
                  const SizedBox(width: 2),
                  Text(
                    '${item.due?.toDouble()}h',
                    style: const TextStyle(color: Color.fromRGBO(13, 2, 255, 1), fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          const SizedBox(height: 7),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 22,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: item.typeColor.bgColor, borderRadius: BorderRadius.circular(11)),
                  child: Text(item.leaveType?.name ?? '', style: TextStyle(color: item.typeColor.textColor, fontSize: 12)),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(item.employee?.employeeProfiles?.fullname ?? '',
                      overflow: TextOverflow.ellipsis, maxLines: 1, style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          const SizedBox(height: 7),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(item.description ?? '', overflow: TextOverflow.ellipsis, maxLines: 1, style: const TextStyle(color: Colors.black, fontSize: 14))),
          const SizedBox(height: 7),
          SizedBox(height: item.status == LeaveStatusColors.newStatus.info.id ? 10 : 0),
          item.status == LeaveStatusColors.newStatus.info.id
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          context.read<LeaveActionBloc>().add(LeaveManagerActionEvent(LeaveActionRequest(id: item.id, type: LeaveActionType.reject.action)));
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.red, width: 1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(horizontal: 25)),
                        child: Text(AppLocalizations.of(context)!.leaveManagerReject, style: const TextStyle(color: Colors.red, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(width: 35),
                    SizedBox(
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          context.read<LeaveActionBloc>().add(LeaveManagerActionEvent(LeaveActionRequest(id: item.id, type: LeaveActionType.approve.action)));
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.green, width: 1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(horizontal: 30)),
                        child: Text(AppLocalizations.of(context)!.leaveManagerApprove, style: const TextStyle(color: Colors.green, fontSize: 15)),
                      ),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
