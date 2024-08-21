import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/device/bloc/device_bloc.dart';
import 'package:mobile_aris_management_tool/device/view/device_widget.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarIconBrightness: Brightness.light));
    return BlocProvider(
        create: (context) => DeviceBloc()..add(DeviceListRequested()),
        child: const Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(child: DeviceList()),
        ));
  }
}
