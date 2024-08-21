import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mobile_aris_management_tool/common/utils/constants.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/bloc/leave_bloc.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_constants.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/leaves/widgets/leave_details_widget.dart';


class MyLeavesWidget extends StatefulWidget {
  const MyLeavesWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyLeaveState();
  }
}

class MyLeaveState extends State<MyLeavesWidget> {
  static const double summaryMinHeight = 145;
  static const double summaryMaxHeight = 530;
  static const double summaryExpandHeight = 385;
  double _animatedHeight = summaryMinHeight;
  List<LeaveData>? _preMyLeaveData;
  LeaveStatisticData? _preLeaveStatisticData;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaveBloc, LeaveState>(
      builder: (context, state) {
        if (state is MyLeaveSuccess) {
          _preMyLeaveData = state.myLeaveData;
          _preLeaveStatisticData = state.leaveStatisticData;
        }
        return Column(
          children: [_buildSummaryWidget(_preLeaveStatisticData), const SizedBox(height: 16), _buildListView(_preMyLeaveData)],
        );
      },
    );
  }

  Widget _buildListView(List<LeaveData>? myLeaveData) {
    return myLeaveData != null
        ? Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return _buildListViewItem(myLeaveData[index]);
              },
              itemCount: myLeaveData.length,
              separatorBuilder: (context, index) => const SizedBox(height: 5),
            ),
          )
        : Container();
  }

  Widget _buildListViewItem(LeaveData item) {
    String startDate = DateFormat(Constant.displayDateTimePattern).format(DateTime.parse(item.startDate!));
    String endDate = DateFormat(Constant.displayDateTimePattern).format(DateTime.parse(item.endDate!));
    return InkWell(
      onTap: () {
        showDialog(context: context, builder: (context) => LeaveDetailsDialog(item, true),).then((value) => {
          if (value == 1) {context.read<LeaveBloc>().add(GetMyLeavesEvent())}
        });
      },
      child: Container(
          width: double.infinity,
          height: 110,
          padding: const EdgeInsets.only(left: 16, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$startDate - $endDate',
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 22,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: item.statusColor.bgColor, borderRadius: BorderRadius.circular(11)),
                    child: Text(
                      'Đã duyệt',
                      style: TextStyle(color: item.statusColor.textColor),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 7),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 22,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(color: item.typeColor.bgColor, borderRadius: BorderRadius.circular(11)),
                    child: Text(
                      item.leaveType?.name ?? '',
                      style: TextStyle(color: item.typeColor.textColor, fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text(item.title ?? "", style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 2,
                          children: [
                            Image.asset('assets/icons/ic_time.png', width: 10, height: 10),
                            Text('${item.due?.toDouble()}h',
                                style: const TextStyle(color: Color.fromRGBO(13, 2, 255, 1), fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        )),
                  )
                ],
              ),
              const SizedBox(height: 9),
              Text(item.description ?? "", style: const TextStyle(color: Colors.black, fontSize: 13), overflow: TextOverflow.ellipsis)
            ],
          )),
    );
  }

  Widget _buildSummaryWidget(LeaveStatisticData? statisticData) {
    return statisticData != null ? AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _animatedHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: _animatedHeight,
          child: Stack(
            children: [
              Column(
                children: [
                  _buildSummaryCollapseWidget(statisticData),
                  _animatedHeight == summaryMaxHeight ? _buildSummaryExpandWidget(statisticData) : Container()
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _animatedHeight = _animatedHeight == summaryMinHeight ? summaryMaxHeight : summaryMinHeight;
                    });
                  },
                  child:
                      Image.asset(_animatedHeight == summaryMinHeight ? 'assets/icons/ic_expand.png' : 'assets/icons/ic_collapse.png', width: 80, height: 30),
                ),
              )
            ],
          ),
        ),
      ),
    ) : Container();
  }

  Widget _buildSummaryCollapseWidget(LeaveStatisticData? statisticData) {
    return Container(
      width: double.infinity,
      height: 130,
      padding: const EdgeInsets.only(left: 20),
      decoration: _animatedHeight == summaryMinHeight
          ? BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white)
          : const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset('assets/images/bg_leaves.png', height: double.infinity),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.leaveRemaining,
                style: const TextStyle(color: Colors.black, fontSize: 13),
              ),
              const SizedBox(height: 5),
              Text(
                '${statisticData?.totalRemaining[0]} ${AppLocalizations.of(context)!.date} ${statisticData?.totalRemaining[1]} ${AppLocalizations.of(context)!.hour}',
                style: const TextStyle(color: Color.fromRGBO(0, 142, 38, 1), fontSize: 20),
              ),
              const SizedBox(height: 5),
              Text(
                "~${statisticData?.total?.remaining} ${AppLocalizations.of(context)!.leaveHour}",
                style: const TextStyle(color: Color.fromRGBO(110, 129, 155, 1), fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryExpandWidget(LeaveStatisticData? statisticData) {
    return Container(
      height: summaryExpandHeight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)), color: Colors.white),
      child: Column(
        children: [
          const SizedBox(height: 5),
          SummaryItemWidget(AppLocalizations.of(context)!.leaveLastYearRemaining, _getDateHours(statisticData?.lastYearRemaining),
              _getLeaveHours(statisticData?.lastYear?.remaining)),
          const DottedLine(dashColor: Colors.black, dashLength: 3, dashGapLength: 1, direction: Axis.horizontal),
          SummaryItemWidget(AppLocalizations.of(context)!.leaveCurrentYearAnnual, _getDateHours(statisticData?.currentAnnual),
              _getLeaveHours(statisticData?.currentYear?.annual)),
          const DottedLine(dashColor: Colors.black, dashLength: 3, dashGapLength: 1, direction: Axis.horizontal),
          SummaryItemWidget(AppLocalizations.of(context)!.leaveSeniority, _getDateHours(statisticData?.currentSeniority),
              _getLeaveHours(statisticData?.currentYear?.seniority)),
          const DottedLine(dashColor: Colors.black, dashLength: 3, dashGapLength: 1, direction: Axis.horizontal),
          SummaryItemWidget(AppLocalizations.of(context)!.leaveBonus, _getDateHours(statisticData?.currentBonus),
              _getLeaveHours(statisticData?.currentYear?.bonus)),
          const DottedLine(dashColor: Colors.black, dashLength: 3, dashGapLength: 1, direction: Axis.horizontal),
          SummaryItemWidget(AppLocalizations.of(context)!.leaveUsed, _getDateHours(statisticData?.currentLeave),
              _getLeaveHours(statisticData?.currentYear?.leave)),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  String _getDateHours(List<dynamic>? dateHour) {
    return "${dateHour?[0]} ${AppLocalizations.of(context)!.date} ${dateHour?[1]} ${AppLocalizations.of(context)!.hour}";
  }

  String _getLeaveHours(dynamic hours) {
    return "~$hours ${AppLocalizations.of(context)!.leaveHour}";
  }
}

class SummaryItemWidget extends StatelessWidget {
  final String _text1, _text2, _text3;

  const SummaryItemWidget(this._text1, this._text2, this._text3, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _text1,
              style: const TextStyle(color: Colors.black, fontSize: 13),
            ),
            Text(
              _text2,
              style: const TextStyle(color: Color.fromRGBO(0, 142, 38, 1), fontSize: 15),
            )
          ],
        ),
        const SizedBox(height: 5),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              _text3,
              style: const TextStyle(color: Color.fromRGBO(110, 129, 155, 1), fontSize: 12),
            )),
        const SizedBox(height: 14),
      ],
    );
  }
}
