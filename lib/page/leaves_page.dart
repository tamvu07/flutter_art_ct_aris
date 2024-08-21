import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/bloc/leave_bloc.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository_impl.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/create_leave_widget.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/leaves_widget.dart';

import '../leaves/domain/models/leave_create_checking_response.dart';

class LeavesPage extends StatelessWidget {
  final LeaveDataRepository _repository = LeaveDataRepositoryImpl();

  LeavesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => LeaveDataRepositoryImpl(),
      child: MultiBlocProvider(
          providers: [BlocProvider(create: (context) => LeaveBloc()), BlocProvider(create: (context) => LeaveActionBloc())],
          child: Builder(
            builder: (context) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: const SafeArea(child: LeavesWidget()),
              floatingActionButton: InkWell(
                  onTap: () async {
                    await _onCreateClicked(context);
                  },
                  child: Image.asset(
                    'assets/icons/ic_create.png',
                    width: 80,
                    height: 80,
                  )),
            ),
          )),
    );
  }

  Future<void> _onCreateClicked(BuildContext context) async {
    context.showLoadingDialog();
    await _repository.getCreateChecking().then((value) => {
          value.when(
            success: (data) {
              context.dismissDialog();
              Navigator.of(context)
                  .push(MaterialPageRoute(
                    builder: (context) => CreateLeavePage(data),
                  ))
                  .then((value) => {
                        if (value == 1) {context.read<LeaveBloc>().add(GetMyLeavesEvent())}
                      });
            },
            failure: (error) {
              context.dismissDialog();
              context.showErrorDialog(error.getErrorMsg());
            },
          )
        });
  }
}

class CreateLeavePage extends StatelessWidget {
  LeaveCheckingResponseData checkingResponseData;

  CreateLeavePage(this.checkingResponseData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(child: CreateLeaveWidget(checkingResponseData)),
      ),
    );
  }
}
