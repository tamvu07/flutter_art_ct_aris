import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/stafflist/bloc/staff_list_data_bloc.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_repository_impl.dart';
import 'package:mobile_aris_management_tool/stafflist/widgets/staff_detail_widget.dart';
import 'package:mobile_aris_management_tool/stafflist/widgets/staff_filter_widget.dart';
import 'package:mobile_aris_management_tool/theme/font_size.dart';
import '../theme/text_theme.dart';

class StaffListWidget extends StatelessWidget {
  const StaffListWidget({Key? key}) : super(key: key);

  Future<void> _getStaffListData(BuildContext context) async {
    BlocProvider.of<StaffListDataBloc>(context).add(const StaffListDataEventRequest());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaffListDataBloc, StaffListDataState>(
      builder: (context, state) {
        debugPrint(state.status.name);
        return RefreshIndicator(
          onRefresh: () {
            return _getStaffListData(context);
          },
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              children: [
                const StaffListToolBarWidget(),
                StaffListSearchFilterWidget(
                  departments: RepositoryProvider.of<DefaultStaffListRepository>(context).getStaffListDepartments(),
                ),
                if (state.status == StaffListDataStatus.loading)
                  const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                else if (state.status == StaffListDataStatus.failure)
                  Center(
                      child: Text(
                    state.error!.exception.toString(),
                    style: const TextStyle(color: Colors.white),
                  ))
                else if (state.status == StaffListDataStatus.success)
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(top: 30.h),
                      itemCount: state.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final staffModel = state.data?[index];
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return StaffDetailWidget(staff: staffModel);
                                });
                          },
                          child: StaffItemWidget(staff: staffModel),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 5.h,
                        );
                      },
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}

class SearchStaffWidget extends StatelessWidget {
  const SearchStaffWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0.r),
          ),
          filled: true,
          hintStyle: buildSearchHintTextStyle(),
          hintText: AppLocalizations.of(context)!.staffListSearchHint,
          fillColor: const Color.fromRGBO(38, 38, 38, 1)),
      onChanged: (value) {
        BlocProvider.of<StaffListDataBloc>(context).add(StaffListSearchEventRequest(value));
      },
    );
  }
}

class StaffItemWidget extends StatelessWidget {
  const StaffItemWidget({Key? key, this.staff}) : super(key: key);
  final EmployeeData? staff;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10.r))),
      height: 136.h,
      child: Row(children: [
        Container(
          width: 100.w,
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: CachedNetworkImageProvider(processGetStaffImage())),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r))),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r))),
            padding: EdgeInsets.all(13.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoStaffTitleWidget(
                  name: staff?.employeeProfiles?.fullname ?? "",
                  position: processGetStaffPosition(),
                ),
                SizedBox(height: 15.h),
                InfoStaffWidget(
                  title: AppLocalizations.of(context)!.staffListEmail,
                  description: staff?.employeeProfiles?.email ?? "",
                ),
                SizedBox(height: 5.h),
                InfoStaffWidget(
                  title: AppLocalizations.of(context)!.staffListPhone,
                  description: staff?.employeeProfiles?.phone ?? "",
                ),
                SizedBox(height: 9.h),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return DivisionTagItemWidget(department: staff?.departments?[index].name);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 2.w);
                    },
                    itemCount: staff?.departments?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  String processGetStaffImage() {
    final imageUrls = staff?.employeeImages;
    var imageUrl = "";
    if (imageUrls?.isNotEmpty == true && imageUrls != null) {
      imageUrl =
          imageUrls[0].imageUrl ?? "https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483141.jpg";
    } else {
      imageUrl = "https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483141.jpg";
    }
    return imageUrl;
  }

  String processGetStaffPosition() {
    final department = staff?.departments;
    var position = "";
    if (department?.isNotEmpty == true && department != null) {
      position = department[0].name?.replaceAll("(?i)divison", "") ?? "N/A";
    } else {
      position = "N/A";
    }
    return position;
  }
}

class InfoStaffWidget extends StatelessWidget {
  final String title;
  final String description;

  const InfoStaffWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: buildInfoTitleTextStyle(),
        ),
        Text(
          description,
          style: buildInfoDescriptionTextStyle(),
        )
      ],
    );
  }
}

class InfoStaffTitleWidget extends StatelessWidget {
  final String name;
  final String position;

  const InfoStaffTitleWidget({Key? key, required this.name, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: buildStaffNameTextStyle(),
        ),
        Flexible(
            child: Text(
          position,
          style: const TextStyle(fontSize: FontSize.pt12),
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}

class CircularImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final double? borderWidth;
  final Color? borderColor;
  final double? borderRadius;
  final String? imageLink;

  const CircularImageWidget(
      {Key? key, required this.width, required this.height, this.borderWidth, this.borderColor, this.borderRadius, this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(width: borderWidth ?? 1, color: borderColor ?? Colors.white),
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            image: DecorationImage(image: CachedNetworkImageProvider(imageLink ?? ""), fit: BoxFit.cover)),
      ),
    );
  }
}

class StaffListToolBarWidget extends StatelessWidget {
  const StaffListToolBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppLocalizations.of(context)!.staffListTitle,
          style: buildToolbarTitleTextStyle(),
        ),
        const CircularImageWidget(
          width: 44,
          height: 44,
          borderWidth: 1,
          borderRadius: 23,
          imageLink: 'https://i.pinimg.com/474x/71/d8/9b/71d89b86c1d7f58f526e9001b9b96d0e.jpg',
        )
      ],
    );
  }
}

class StaffListSearchFilterWidget extends StatelessWidget {
  final List<Departments> departments;

  const StaffListSearchFilterWidget({Key? key, required this.departments}) : super(key: key);
  static int genderId = -1;
  static int departmentId = -1;

  @override
  Widget build(BuildContext context) {
    double bottomSheetHeight = MediaQuery.of(context).size.height - 72.h;
    return SizedBox(
      height: 55.h,
      child: Row(children: [
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: SizedBox(
            width: (MediaQuery.of(context).size.width - 20.w) - 85.w,
            child: const SearchStaffWidget(),
          ),
        ),
        Container(
          width: 1.h,
          height: 21.h,
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            showStaffFilterBottomSheetDialog(context, bottomSheetHeight, departments);
          },
          child: Image.asset(
            'assets/icons/ic_filter.png',
            width: 50.w,
            height: 50.h,
          ),
        )
      ]),
    );
  }

  void showStaffFilterBottomSheetDialog(BuildContext context, double bottomSheetHeight, List<Departments> departments) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return StaffFilterWidget(
            bottomSheetHeight: bottomSheetHeight,
            departments: departments,
          );
        }).then(
      (value) {
        if (value != null) {
          final filterModel = value as StaffFilterModel;
          BlocProvider.of<StaffListDataBloc>(context).add(StaffListFilterEventRequest(filterModel));
        }
      },
    );
  }
}
