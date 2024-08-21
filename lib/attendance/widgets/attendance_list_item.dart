import 'dart:async';
import 'dart:developer' show log;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_bloc.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_event.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_state.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item_inherited.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';

class AttendanceListItem extends StatefulWidget {
  final StreamController<int> streamPos;

  const AttendanceListItem({Key? key, required this.streamPos}) : super(key: key);

  @override
  State<AttendanceListItem> createState() => _AttendanceListItemState();
}

class _AttendanceListItemState extends State<AttendanceListItem> {
  @override
  void initState() {
    super.initState();
    widget.streamPos.stream.listen((pos) {
      log("AttendanceListItem initState position $pos");
      if (pos != -1) {
        context.read<AttendanceDataBloc>().add(AttendanceFilterByMonth(selectedPos: pos));
      }
    });
    context.read<AttendanceDataBloc>().stream.listen((event) {
      switch (event.status) {
        case AttendanceDataStatus.initial:
          log("AttendancePageDetail initState  AttendanceDataStatus.initial");
          break;
        case AttendanceDataStatus.loading:
          log("AttendancePageDetail initState  AttendanceDataStatus.loading");
          context.showLoadingDialog();
          break;
        case AttendanceDataStatus.success:
          log("AttendancePageDetail initState  AttendanceDataStatus.success");
          context.dismissDialog();
          break;
        case AttendanceDataStatus.failure:
          log("AttendancePageDetail initState  AttendanceDataStatus.failure ${event.error.toString()}");
          context.dismissDialog();
          context.showErrorDialog(event.error?.getErrorMsg() ?? "asd");
          break;
        case AttendanceDataStatus.successFilter:
          log("AttendancePageDetail initState  AttendanceDataStatus.successFilter");
          context.dismissDialog();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceDataBloc, AttendanceDataState>(
      builder: (context, state) {
        switch (state.status) {
          case AttendanceDataStatus.initial:
            context.read<AttendanceDataBloc>().add(AttendanceFilterByMonth(selectedPos: 0));
            log("AttendanceDataStatus.initial");
            return const SizedBox(width: 0, height: 0);

          case AttendanceDataStatus.loading:
            log("AttendanceDataStatus.loading");
            return const SizedBox(width: 0, height: 0);

          case AttendanceDataStatus.success:
            return AttendanceListData(
              listData: state.data!.listAttendanceDetail ?? List.empty(),
            );

          case AttendanceDataStatus.failure:
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(),
            );

          case AttendanceDataStatus.successFilter:
            return AttendanceListData(
              listData: state.listData ?? List.empty(),
            );
        }
      },
    );
  }
}

class AttendanceListData extends StatelessWidget {
  final List<AttendanceDetail> listData;
  const AttendanceListData({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return AttendanceItemInherited(
          detailData: listData[index],
          child: const ItemAttendance(),
        );
      },
      itemCount: listData.length,
      physics: const AlwaysScrollableScrollPhysics(),
    );
  }
}
