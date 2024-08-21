import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/device/bloc/device_bloc.dart';
import 'package:mobile_aris_management_tool/device/view/all_device_list.dart';
import 'package:mobile_aris_management_tool/device/view/borrowing_device_list.dart';
import 'package:mobile_aris_management_tool/device/view/device_tab_bar.dart';

class DeviceList extends StatefulWidget {
  const DeviceList({Key? key}) : super(key: key);

  @override
  State<DeviceList> createState() => _DeviceListState();
}

class _DeviceListState extends State<DeviceList> with TickerProviderStateMixin {
  late TabController _tabController;
  late DeviceListType _selectedListType = DeviceListType.all;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: DeviceListType.values.length, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _selectedListType = DeviceListType.values[_tabController.index];
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  'DANH SÁCH THIẾT BỊ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
                ),
              ),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(22),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/4c/47/82/4c47823ac4236af160e39ab435f56557--white-bunnies-white-rabbits.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 22),
          buildDeviceListTabs(context, _tabController),
          const SizedBox(height: 30),
          _buildContentTab()
        ],
      ),
    );
  }

  Widget _buildSearchAndFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        Expanded(
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(33, 33, 33, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                hintText: 'Tìm thiết bị...',
                hintStyle:
                    const TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color: Colors.white),
                contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18)),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: 14),
        Container(width: 1, height: 21, color: Colors.white),
        SizedBox(
          width: 50,
          height: 50,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ic_filter.png'),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _buildContentTab() {
    return BlocBuilder<DeviceBloc, DeviceState>(builder: (context, state) {
      if (state is DeviceLoading) {
        return const Center(child: CircularProgressIndicator(strokeWidth: 2));
      }
      if (state is DeviceFailure) {
        return Center(child: Text(state.error.exception.toString()));
      }
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: _buildSearchAndFilter(),
                  ),
                  AllDeviceListWidget(),
                ],
              ),
              BorrowingDeviceListWidget()
            ],
          ),
        ),
      );
    });
  }
}
