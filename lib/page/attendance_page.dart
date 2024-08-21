import 'dart:async';
import 'dart:developer' as dev show log;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_event.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_state.dart';
import 'package:mobile_aris_management_tool/attendance/domain/services/attendance_local_data_source_impl.dart';
import 'package:mobile_aris_management_tool/attendance/domain/services/attendance_remote_date_source_impl.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_appbar.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_list_item.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_month.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_status.dart';

import '../attendance/bloc/attendance_data_bloc.dart';
import '../attendance/domain/services/attendance_repository_impl.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  StreamController<int> streamControllerPos = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AttendanceDataBloc(attendanceRepo: AttendanceRepositoryImpl(remoteDataSource: AttendanceRemoteDataSourceImpl(), localDataSource: AttendanceLocalDataSourceImpl())),
        ),
      ],
      child: BlocBuilder<AttendanceDataBloc, AttendanceDataState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: Container(
              color: Colors.black,
              child: RefreshIndicator(
                onRefresh: () async {
                  dev.log("RefreshIndicator...");
                  streamControllerPos.add(-1);
                  context.read<AttendanceDataBloc>().add(AttendanceFilterByMonth(selectedPos: 0));
                },
                child: Column(
                  children: [
                    const AttendanceAppbar(),
                    AttendanceMonth(streamPos: streamControllerPos),
                    const AttendanceStatus(),
                    Expanded(
                      child: AttendanceListItem(streamPos: streamControllerPos),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
