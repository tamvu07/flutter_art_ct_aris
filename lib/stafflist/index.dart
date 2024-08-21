import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/repository/staff_list_repository.dart';
import 'bloc/staff_list_data_bloc.dart';
import 'widgets/staff_list_widget.dart';

class StaffListModuleWidget extends StatelessWidget {
  const StaffListModuleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StaffListWidget();
  }
}
