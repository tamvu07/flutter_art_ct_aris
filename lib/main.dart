import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_repository.dart';
import 'package:mobile_aris_management_tool/init/domain/services/init_data_local_data_source_impl.dart';
import 'package:mobile_aris_management_tool/init/domain/services/init_data_remote_data_source_impl.dart';
import 'package:mobile_aris_management_tool/init/domain/services/init_data_repository_impl.dart';
import 'package:mobile_aris_management_tool/page/home_page.dart';
import 'package:mobile_aris_management_tool/page/login_page_ext.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login/domain/models/login_response.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  var sharedPrefs = await SharedPreferences.getInstance();
  Hive
    ..init(appDocumentDirectory.path)
    ..registerAdapter(StaffListDetailDataAdapter())
    ..registerAdapter(EmployeeDataAdapter())
    ..registerAdapter(LinksAdapter())
    ..registerAdapter(DepartmentAdapter())
    ..registerAdapter(EmployeeImagesAdapter())
    ..registerAdapter(EmployeeProfilesAdapter())
    ..registerAdapter(LoginDataAdapter())
    ..registerAdapter(UserAdapter());
  // await Hive.openBox('staffList');
  await Hive.openBox("staffList");
  await Hive.openBox("loginData");
  var defaultInitDataSource = DefaultInitDataRepository(
      DefaultInitDataRemoteDataSource(), DefaultInitDataLocalDataSource());
  runApp(ArtApp(
      initDataRepository: defaultInitDataSource, sharedPrefs: sharedPrefs));
}

class ArtApp extends StatelessWidget {
  final InitDataRepository initDataRepository;
  final SharedPreferences? sharedPrefs;
  ArtApp({super.key, required this.initDataRepository, this.sharedPrefs});
  Widget goToPage() {
    if (sharedPrefs == null ||
        (sharedPrefs!.getString('token') == null) ||
        (sharedPrefs!.getString('token')!.isEmpty)) {
      return LoginPage();
    }
    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            home: goToPage(),
            localizationsDelegates: const [
              AppLocalizations.delegate, // Add this line
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('vi', ''),
              Locale('en', ''),
            ],
          );
        });
  }
}
