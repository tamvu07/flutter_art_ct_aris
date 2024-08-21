import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mobile_aris_management_tool/common/utils/constants.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/bloc/leave_bloc.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_checking_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository_impl.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../domain/models/leave_constants.dart';

class CreateLeaveWidget extends StatefulWidget {
  LeaveCheckingResponseData checkingResponseData;

  CreateLeaveWidget(this.checkingResponseData, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CreateLeaveState();
  }
}

class CreateLeaveState extends State<CreateLeaveWidget> {
  final LeaveDataRepository _repository = LeaveDataRepositoryImpl();
  DisplayOption? _selectedLeaveType;
  List<Assignee> _selectedLeaveManager = List.empty();
  PickerDateRange? _selectedLeaveDateRange;
  final _titleTextController = TextEditingController();
  final _hourTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset('assets/icons/ic_back.png', width: 30, height: 30)),
              const SizedBox(width: 10),
              Text(AppLocalizations.of(context)!.leaveCreatePageTitle, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 45),
                    Text(AppLocalizations.of(context)!.leaveSectionTitle, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildInputContainer(AppLocalizations.of(context)!.hintInputLeaveTitle, false, _titleTextController),
                    const SizedBox(height: 20),
                    Text(AppLocalizations.of(context)!.leaveSectionTimeRange, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildLeaveDateRangeWidget(),
                    const SizedBox(height: 20),
                    Text(AppLocalizations.of(context)!.leaveSectionLeaveType, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildDropDown(AppLocalizations.of(context)!.hintInputLeaveType, _selectedLeaveType, widget.checkingResponseData.type!.toList(), (p0) {
                      setState(() {
                        _selectedLeaveType = p0;
                      });
                    }),
                    const SizedBox(height: 20),
                    Text(AppLocalizations.of(context)!.leaveSectionHourNumber, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildInputContainer(AppLocalizations.of(context)!.hintInputLeaveHours, true, _hourTextController),
                    const SizedBox(height: 20),
                    Text(AppLocalizations.of(context)!.leaveSectionManager, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildDropDownAssignee(),
                    const SizedBox(height: 20),
                    Text(AppLocalizations.of(context)!.leaveSectionDescription, style: _sectionTitleStyle),
                    const SizedBox(height: 10),
                    _buildDescriptionInputContainer(AppLocalizations.of(context)!.hintInputLeaveDescription),
                    const SizedBox(height: 40),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 140,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () async {
                              await _createLeaveFormNow();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(13, 2, 255, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              AppLocalizations.of(context)!.buttonCreateLeave,
                              style: const TextStyle(color: Colors.white, fontSize: 14),
                            )),
                      ),
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Future<void> _createLeaveFormNow() async {
    if (_validateInputs()) {
      context.showLoadingDialog();
      var dateRange =
          "${_selectedLeaveDateRange?.startDate?.format(Constant.serverDateTimePattern)} - ${_selectedLeaveDateRange?.endDate?.format(Constant.serverDateTimePattern)}";
      var request = LeaveCreateRequest(
          title: _titleTextController.text,
          date: dateRange,
          type: _selectedLeaveType?.getOptionId(),
          assignee: _selectedLeaveManager.map((e) => e.employee!.id!).toList(),
          due: _hourTextController.text.parseDouble,
          description: _descriptionTextController.text);
      await _repository.postCreateForm(request).then((value) => {
            value.when(
              success: (data) {
                context.dismissDialog();
                Navigator.pop(context, 1);
              },
              failure: (error) {
                context.dismissDialog();
                context.showErrorDialog(error.getErrorMsg());
              },
            )
          });
    } else {
      context.showErrorDialog(AppLocalizations.of(context)!.leaveCreateValidationErrorMessage);
    }
  }

  bool _validateInputs() {
    return _titleTextController.text.isNotEmpty &&
        _selectedLeaveDateRange != null &&
        _selectedLeaveType != null &&
        _hourTextController.text.isNotEmpty &&
        _selectedLeaveManager.isNotEmpty &&
        _descriptionTextController.text.isNotEmpty;
  }

  Widget _buildLeaveDateRangeWidget() {
    return Container(
      height: 52,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: _boxDecoration,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => _buildDatePickerDialog(),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _selectedLeaveDateRange == null
                ? Text(AppLocalizations.of(context)!.hintInputLeaveTime, style: const TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic))
                : Text(
                    "${DateFormat('dd/MM/yyyy').format(_selectedLeaveDateRange!.startDate!)} - ${DateFormat('dd/MM/yyyy').format(_selectedLeaveDateRange!.endDate!)}",
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
            Image.asset('assets/icons/ic_dropdown.png', width: 16, height: 14)
          ],
        ),
      ),
    );
  }

  void _showMultiSelectAssignee(BuildContext context) async {
    await showModalBottomSheet(
      isScrollControlled: true, // required for min/max child size
      context: context,
      builder: (ctx) {
        return MultiSelectBottomSheet(
          items: widget.checkingResponseData.assignee!.map((e) => MultiSelectItem<Assignee>(e, e.employee?.employeeProfiles?.fullname ?? '')).toList(),
          initialValue: _selectedLeaveManager,
          onConfirm: (List<Assignee> values) {
            setState(() {
              _selectedLeaveManager = values;
            });
          },
          maxChildSize: 0.8,
          minChildSize: 0.5,
          initialChildSize: 0.8,
        );
      },
    );
  }

  Widget _buildDropDownAssignee() {
    return InkWell(
      onTap: () {
        _showMultiSelectAssignee(context);
      },
      child: Container(
        height: 52,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: _boxDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _selectedLeaveManager.isEmpty
                ? Expanded(
                    child: Text(AppLocalizations.of(context)!.hintInputLeaveManager,
                        style: const TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic), maxLines: 1),
                  )
                : Expanded(
                    child: Text(_selectedLeaveManager.map((e) => e.employee?.employeeProfiles?.fullname ?? '').join(', '),
                        style: const TextStyle(fontSize: 16, color: Colors.black), maxLines: 1, overflow: TextOverflow.ellipsis),
                  ),
            Image.asset('assets/icons/ic_dropdown.png', width: 16, height: 14)
          ],
        ),
      ),
    );
  }

  Widget _buildDropDown(String hint, DisplayOption? selectedItem, List<DisplayOption> items, Function(DisplayOption) onChangedFunc) {
    return Container(
        height: 52,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: _boxDecoration,
        child: DropdownButtonHideUnderline(
            child: selectedItem == null
                ? DropdownButton<DisplayOption>(
                    isExpanded: true,
                    items: items
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(_getOptionName(e)),
                            ))
                        .toList(),
                    onChanged: (value) {
                      onChangedFunc(value!);
                    },
                    icon: Image.asset('assets/icons/ic_dropdown.png', width: 16, height: 14),
                    elevation: 16,
                    hint: Text(hint, style: const TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic)),
                  )
                : DropdownButton<DisplayOption>(
                    isExpanded: true,
                    value: selectedItem,
                    items: items
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(_getOptionName(e)),
                            ))
                        .toList(),
                    onChanged: (value) {
                      onChangedFunc(value!);
                    },
                    icon: Image.asset('assets/icons/ic_dropdown.png', width: 16, height: 14),
                    elevation: 16,
                    hint: Text(hint, style: const TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic)),
                  )));
  }

  String _getOptionName(DisplayOption e) {
    if (e is Type) {
      if (e.id == LeaveTypeColors.annualLeave.info.id) {
        return "${e.name} (Max: ${widget.checkingResponseData.dob!.toDouble() + widget.checkingResponseData.period!.toDouble() + widget.checkingResponseData.annual!.parseDouble} hours)";
      } else if (e.id == LeaveTypeColors.marriageLeave.info.id) {
        return "${e.name} (Max: 24 hours)";
      } else if (e.id == LeaveTypeColors.maternityLeave.info.id) {
        return "${e.name} (Max: 1440 hours)";
      }
    }
    return e.getOptionName();
  }

  Container _buildDescriptionInputContainer(String hintText) {
    return Container(
        height: 140,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: TextField(
            controller: _descriptionTextController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: const TextStyle(fontSize: 15, color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none, hintText: hintText, hintStyle: const TextStyle(color: Colors.grey, fontSize: 15, fontStyle: FontStyle.italic))));
  }

  Container _buildInputContainer(String hintText, bool onlyDigit, TextEditingController controller) {
    return Container(
        height: 52,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: TextField(
            controller: controller,
            style: const TextStyle(fontSize: 15, color: Colors.black),
            minLines: 1,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: hintText, hintStyle: const TextStyle(color: Colors.grey, fontSize: 15, fontStyle: FontStyle.italic)),
            keyboardType: onlyDigit ? TextInputType.number : TextInputType.text));
  }

  final BoxDecoration _boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: Colors.black, width: 1),
    gradient: const LinearGradient(
        colors: [Color.fromRGBO(255, 255, 255, 1), Color.fromRGBO(230, 230, 230, 1)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
  );

  final TextStyle _sectionTitleStyle = const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);

  Dialog _buildDatePickerDialog() {
    return Dialog(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: SfDateRangePicker(
          selectionMode: DateRangePickerSelectionMode.range,
          initialDisplayDate: DateTime.now(),
          showActionButtons: true,
          showTodayButton: true,
          onCancel: () {
            Navigator.pop(context);
          },
          onSubmit: (p0) {
            PickerDateRange range = p0 as PickerDateRange;
            if (range.startDate == null || range.endDate == null) return;
            Navigator.pop(context);
            setState(() {
              _selectedLeaveDateRange = p0;
            });
          },
        ),
      ),
    );
  }
}
