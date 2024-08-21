import 'package:flutter/material.dart';
import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';

class DeviceRowItem extends StatelessWidget {
  const DeviceRowItem(
      {Key? key,
      required this.item,
      required this.onRowTap,
      required this.onActionTap})
      : super(key: key);

  final Device item;
  final Function(Device)? onRowTap;
  final Function(Device)? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                image: DecorationImage(
                    image:
                        NetworkImage(item.borrowDeviceImages?.imageUrl ?? ''),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 5),
                Text(
                  item.os ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 70,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/ic_device_return.png'),
            ),
          )
        ],
      ),
    );
  }
}
