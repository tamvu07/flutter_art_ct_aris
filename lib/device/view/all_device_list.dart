import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/device/bloc/device_bloc.dart';
import 'package:mobile_aris_management_tool/device/view/device_row_item.dart';

class AllDeviceListWidget extends StatefulWidget {
  const AllDeviceListWidget({Key? key}) : super(key: key);

  @override
  State<AllDeviceListWidget> createState() => _AllDeviceListWidgetState();
}

class _AllDeviceListWidgetState extends State<AllDeviceListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceBloc, DeviceState>(builder: (context, state) {
      if (state is DeviceGetListSuccess && state.allDevices != null) {
        return Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: state.allDevices!.length,
            itemBuilder: (context, index) => DeviceRowItem(
              item: state.allDevices![index],
              onRowTap: (d) => {},
              onActionTap: (d) => {},
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
        );
      }
      return Container();
    });
  }
}
