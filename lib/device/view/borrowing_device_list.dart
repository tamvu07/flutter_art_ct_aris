import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/device/bloc/device_bloc.dart';
import 'package:mobile_aris_management_tool/device/view/device_row_item.dart';

class BorrowingDeviceListWidget extends StatefulWidget {
  const BorrowingDeviceListWidget({Key? key}) : super(key: key);

  @override
  State<BorrowingDeviceListWidget> createState() => _BorrowingDeviceListWidgetState();
}

class _BorrowingDeviceListWidgetState extends State<BorrowingDeviceListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceBloc, DeviceState>(builder: (context, state) {
      if (state is DeviceGetListSuccess && state.borrowingDevices != null) {
        return Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: state.borrowingDevices!.length,
            itemBuilder: (context, index) => DeviceRowItem(
              item: state.borrowingDevices![index],
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
