import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/stafflist//index.dart';
import 'package:mobile_aris_management_tool/stafflist/bloc/staff_list_data_bloc.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_local_data_source_impl.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_remote_data_source_impl.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_repository_impl.dart';

class StaffListPage extends StatelessWidget {
  StaffListPage({Key? key}) : super(key: key);
  var defaultInitDataSource = DefaultStaffListRepository(
      DefaultStaffListRemoteDataSource(), DefaultStaffListLocalDataSource());

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => defaultInitDataSource,
      child: BlocProvider(
        create: (context) =>
            StaffListDataBloc(staffListDataRepository: defaultInitDataSource),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              color: Colors.black,
              child: const SafeArea(child: StaffListModuleWidget()),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      ),
    );
  }
}
