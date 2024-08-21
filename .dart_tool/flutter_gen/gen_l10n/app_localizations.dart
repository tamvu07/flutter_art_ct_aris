import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Art Tool'**
  String get appTitle;

  /// No description provided for @actionFetch.
  ///
  /// In en, this message translates to:
  /// **'Fetch Data'**
  String get actionFetch;

  /// No description provided for @staffListTitle.
  ///
  /// In en, this message translates to:
  /// **'STAFF LIST'**
  String get staffListTitle;

  /// No description provided for @staffListSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name...'**
  String get staffListSearchHint;

  /// No description provided for @staffListEmail.
  ///
  /// In en, this message translates to:
  /// **'Email:'**
  String get staffListEmail;

  /// No description provided for @staffListPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone:'**
  String get staffListPhone;

  /// No description provided for @staffListPosition.
  ///
  /// In en, this message translates to:
  /// **'Position:'**
  String get staffListPosition;

  /// No description provided for @staffListOffice.
  ///
  /// In en, this message translates to:
  /// **'Department:'**
  String get staffListOffice;

  /// No description provided for @staffListFilterDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get staffListFilterDialogTitle;

  /// No description provided for @staffListFilterDialogDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get staffListFilterDialogDefault;

  /// No description provided for @staffListFilterGenderTitle.
  ///
  /// In en, this message translates to:
  /// **'Gender:'**
  String get staffListFilterGenderTitle;

  /// No description provided for @staffListCloseDialog.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get staffListCloseDialog;

  /// No description provided for @staffListFilterDialogApplyTitle.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get staffListFilterDialogApplyTitle;

  /// No description provided for @staffListFilterDepartmentHint.
  ///
  /// In en, this message translates to:
  /// **'Filter a department'**
  String get staffListFilterDepartmentHint;

  /// No description provided for @staffListFilterGenderHint.
  ///
  /// In en, this message translates to:
  /// **'Filter a gender'**
  String get staffListFilterGenderHint;

  /// No description provided for @staffListMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get staffListMale;

  /// No description provided for @staffListFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get staffListFemale;

  /// No description provided for @hintInputLeaveTime.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng chọn thời gian...'**
  String get hintInputLeaveTime;

  /// No description provided for @hintInputLeaveType.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng chọn hình thức nghỉ...'**
  String get hintInputLeaveType;

  /// No description provided for @hintInputLeaveHours.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng nhập số giờ nghỉ...'**
  String get hintInputLeaveHours;

  /// No description provided for @hintInputLeaveManager.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng chọn người quản lý...'**
  String get hintInputLeaveManager;

  /// No description provided for @hintInputLeaveDescription.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng nhập mô tả ...'**
  String get hintInputLeaveDescription;

  /// No description provided for @hintInputLeaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Vui lòng nhập nội dung...'**
  String get hintInputLeaveTitle;

  /// No description provided for @leaveSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Nội dung:'**
  String get leaveSectionTitle;

  /// No description provided for @leaveSectionTimeRange.
  ///
  /// In en, this message translates to:
  /// **'Thời gian:'**
  String get leaveSectionTimeRange;

  /// No description provided for @leaveSectionLeaveType.
  ///
  /// In en, this message translates to:
  /// **'Hình thức nghỉ:'**
  String get leaveSectionLeaveType;

  /// No description provided for @leaveSectionHourNumber.
  ///
  /// In en, this message translates to:
  /// **'Số giờ nghỉ: (tính theo giờ)'**
  String get leaveSectionHourNumber;

  /// No description provided for @leaveSectionManager.
  ///
  /// In en, this message translates to:
  /// **'Gửi đến:'**
  String get leaveSectionManager;

  /// No description provided for @leaveSectionDescription.
  ///
  /// In en, this message translates to:
  /// **'Mô tả:'**
  String get leaveSectionDescription;

  /// No description provided for @buttonCreateLeave.
  ///
  /// In en, this message translates to:
  /// **'Tạo lịch nghỉ'**
  String get buttonCreateLeave;

  /// No description provided for @leaveCreatePageTitle.
  ///
  /// In en, this message translates to:
  /// **'ĐƠN XIN NGHỈ'**
  String get leaveCreatePageTitle;

  /// No description provided for @leaveRemaining.
  ///
  /// In en, this message translates to:
  /// **'Còn lại:'**
  String get leaveRemaining;

  /// No description provided for @leaveLastYearRemaining.
  ///
  /// In en, this message translates to:
  /// **'Ngày phép năm trước còn lại:'**
  String get leaveLastYearRemaining;

  /// No description provided for @leaveCurrentYearAnnual.
  ///
  /// In en, this message translates to:
  /// **'Ngày phép năm nay:'**
  String get leaveCurrentYearAnnual;

  /// No description provided for @leaveSeniority.
  ///
  /// In en, this message translates to:
  /// **'Ngày phép thâm niên:'**
  String get leaveSeniority;

  /// No description provided for @leaveBonus.
  ///
  /// In en, this message translates to:
  /// **'Ngày phép ngoài giờ:'**
  String get leaveBonus;

  /// No description provided for @leaveUsed.
  ///
  /// In en, this message translates to:
  /// **'Ngày phép đã dùng:'**
  String get leaveUsed;

  /// No description provided for @leaveSectionStartDate.
  ///
  /// In en, this message translates to:
  /// **'Từ ngày giờ:'**
  String get leaveSectionStartDate;

  /// No description provided for @leaveSectionEndDate.
  ///
  /// In en, this message translates to:
  /// **'Đến ngày giờ:'**
  String get leaveSectionEndDate;

  /// No description provided for @leaveSectionStatus.
  ///
  /// In en, this message translates to:
  /// **'Trạng thái:'**
  String get leaveSectionStatus;

  /// No description provided for @leaveSectionAssignee.
  ///
  /// In en, this message translates to:
  /// **'Người duyệt:'**
  String get leaveSectionAssignee;

  /// No description provided for @leaveSectionReason.
  ///
  /// In en, this message translates to:
  /// **'Lý do:'**
  String get leaveSectionReason;

  /// No description provided for @leaveCancelForm.
  ///
  /// In en, this message translates to:
  /// **'Thu hồi đơn'**
  String get leaveCancelForm;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Đóng'**
  String get close;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'ngày'**
  String get date;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'giờ'**
  String get hour;

  /// No description provided for @leaveHour.
  ///
  /// In en, this message translates to:
  /// **'giờ phép'**
  String get leaveHour;

  /// No description provided for @leaveTitle.
  ///
  /// In en, this message translates to:
  /// **'NGÀY NGHỈ'**
  String get leaveTitle;

  /// No description provided for @leaveTabTitleMyLeave.
  ///
  /// In en, this message translates to:
  /// **'Ngày tôi nghỉ'**
  String get leaveTabTitleMyLeave;

  /// No description provided for @leaveTabTitleRequestLeave.
  ///
  /// In en, this message translates to:
  /// **'Yêu cầu nghỉ'**
  String get leaveTabTitleRequestLeave;

  /// No description provided for @leaveManagerApprove.
  ///
  /// In en, this message translates to:
  /// **'Duyệt'**
  String get leaveManagerApprove;

  /// No description provided for @leaveManagerReject.
  ///
  /// In en, this message translates to:
  /// **'Từ chối'**
  String get leaveManagerReject;

  /// No description provided for @leaveCreateValidationErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'The entered information is incorrect. Please check it again. Thanks.'**
  String get leaveCreateValidationErrorMessage;

  /// No description provided for @nav_dashboard_title.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get nav_dashboard_title;

  /// No description provided for @nav_device_title.
  ///
  /// In en, this message translates to:
  /// **'Borrow device'**
  String get nav_device_title;

  /// No description provided for @nav_meeting_title.
  ///
  /// In en, this message translates to:
  /// **'Booking room'**
  String get nav_meeting_title;

  /// No description provided for @nav_leave_title.
  ///
  /// In en, this message translates to:
  /// **'Leave'**
  String get nav_leave_title;

  /// No description provided for @nav_more_title.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get nav_more_title;

  /// No description provided for @menu_stafflist_title.
  ///
  /// In en, this message translates to:
  /// **'Staff List'**
  String get menu_stafflist_title;

  /// No description provided for @menu_attendance_title.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get menu_attendance_title;

  /// No description provided for @art_tool.
  ///
  /// In en, this message translates to:
  /// **'ART TOOL'**
  String get art_tool;

  /// No description provided for @ais_vn.
  ///
  /// In en, this message translates to:
  /// **'ARIS VIETNAM'**
  String get ais_vn;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'Tên đăng nhập của bạn...'**
  String get user_name;

  /// No description provided for @pass_word.
  ///
  /// In en, this message translates to:
  /// **'Mật khẩu của bạn...'**
  String get pass_word;

  /// No description provided for @login_btn.
  ///
  /// In en, this message translates to:
  /// **'ĐĂNG NHẬP'**
  String get login_btn;

  /// No description provided for @term1.
  ///
  /// In en, this message translates to:
  /// **'Đăng nhập đồng nghĩa bạn đã chấp thuận '**
  String get term1;

  /// No description provided for @term21.
  ///
  /// In en, this message translates to:
  /// **'Điều khoản sử dụng'**
  String get term21;

  /// No description provided for @term22.
  ///
  /// In en, this message translates to:
  /// **' và '**
  String get term22;

  /// No description provided for @term23.
  ///
  /// In en, this message translates to:
  /// **'Chính sách bảo mật'**
  String get term23;

  /// No description provided for @forgot_pass_btn.
  ///
  /// In en, this message translates to:
  /// **'Quên mật khẩu'**
  String get forgot_pass_btn;

  /// No description provided for @help_btn.
  ///
  /// In en, this message translates to:
  /// **'Cần hỗ trợ?'**
  String get help_btn;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Phiên bản 1.0'**
  String get version;

  /// No description provided for @attendance_point_label.
  ///
  /// In en, this message translates to:
  /// **'point'**
  String get attendance_point_label;

  /// No description provided for @attendance_status_comme_late.
  ///
  /// In en, this message translates to:
  /// **'Đi trễ'**
  String get attendance_status_comme_late;

  /// No description provided for @attendance_status_no_check_in.
  ///
  /// In en, this message translates to:
  /// **'no check in'**
  String get attendance_status_no_check_in;

  /// No description provided for @attendance_status_no_check_out.
  ///
  /// In en, this message translates to:
  /// **'no check out'**
  String get attendance_status_no_check_out;

  /// No description provided for @attendance_status_leave_early.
  ///
  /// In en, this message translates to:
  /// **'leave early'**
  String get attendance_status_leave_early;

  /// No description provided for @attendance_status_pass.
  ///
  /// In en, this message translates to:
  /// **'pass'**
  String get attendance_status_pass;

  /// No description provided for @user_name_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your user name'**
  String get user_name_empty;

  /// No description provided for @pass_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pass_empty;

  /// No description provided for @repass_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your repassword'**
  String get repass_empty;

  /// No description provided for @hint_email_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Nhập email để lấy lại mật khẩu...'**
  String get hint_email_forgot_password;

  /// No description provided for @hint_password_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Nhập mật khẩu mới...'**
  String get hint_password_forgot_password;

  /// No description provided for @hint_repassword_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Nhập lại mật khẩu mới...'**
  String get hint_repassword_forgot_password;

  /// No description provided for @password_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Password:'**
  String get password_forgot_password;

  /// No description provided for @repassword_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'RePassword:'**
  String get repassword_forgot_password;

  /// No description provided for @confirm_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Xác nhận'**
  String get confirm_forgot_password;

  /// No description provided for @email_empty_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get email_empty_forgot_password;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
