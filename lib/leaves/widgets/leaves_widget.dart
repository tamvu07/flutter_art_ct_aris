import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/common/widgets/loading_dialog.dart';
import 'package:mobile_aris_management_tool/leaves/bloc/leave_bloc.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/my_leave_widget.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/request_leave_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LeavesWidget extends StatefulWidget {
  const LeavesWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LeavesState();
  }
}

enum TabType { myLeaves, requestLeaves }

class LeavesState extends State<LeavesWidget> with TickerProviderStateMixin {
  TabType _tabType = TabType.myLeaves;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: TabType.values.length, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      setState(() {
        _tabType = TabType.values[_tabController.index];
      });
    });
    context.read<LeaveBloc>().stream.listen((event) {
      switch (event.runtimeType) {
        case LeaveLoading:
          context.showLoadingDialog();
          break;
        case MyLeaveSuccess:
          context.dismissDialog();
          return;
      }
    });
    Future.delayed(const Duration(milliseconds: 300), () {
      context.read<LeaveBloc>().add(GetMyLeavesEvent());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.leaveTitle,
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(23),
                    image: const DecorationImage(
                        image: CachedNetworkImageProvider('https://vnn-imgs-a1.vgcloud.vn/icdn.dantri.com.vn/2021/04/23/hot-girl-quang-ngaidocx-1619135586220.jpeg'))),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 91,
                child: TabBar(
                  isScrollable: true,
                  tabs: [_buildMyLeavesTab(), _buildRequestLeavesTab()],
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                ),
              ),
              const SizedBox(width: 10),
              Container(width: 1, height: 30, color: Colors.white),
              InkWell(onTap: () {}, child: Image.asset('assets/icons/ic_filter.png', width: 40, height: 40))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _buildTabContent()
        ],
      ),
    );
  }

  Widget _buildRequestLeavesTab() {
    return Container(
      width: 150,
      height: 40,
      decoration: _tabType == TabType.requestLeaves
          ? BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          AppLocalizations.of(context)!.leaveTabTitleRequestLeave,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildMyLeavesTab() {
    return Container(
      width: 150,
      height: 40,
      decoration: _tabType == TabType.myLeaves
          ? BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          AppLocalizations.of(context)!.leaveTabTitleMyLeave,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: TabBarView(
          controller: _tabController,
          children: const [MyLeavesWidget(), RequestLeavesWidget()],
        ),
      ),
    );
  }
}
