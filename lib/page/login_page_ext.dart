import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/login/bloc/login_data_bloc.dart';
import 'package:mobile_aris_management_tool/login/bloc/login_data_state.dart';
import 'package:mobile_aris_management_tool/login/domain/services/login_remote_data_source_impl.dart';
import 'package:mobile_aris_management_tool/login/domain/services/login_repository_impl.dart';
import 'package:mobile_aris_management_tool/page/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../init/widgets/init_widget.dart';
import '../login/bloc/login_data_event.dart';
import '../login/domain/services/login_local_data_source_impl.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  var defaultInitDataSource = DefaultLoginRepository(
      DefaultLoginRemoteDataSource(), DefaultLoginLocalDataSource());

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => defaultInitDataSource,
      child: BlocProvider(
        create: (context) =>
            LoginDataBloc(loginDataRepository: defaultInitDataSource),
        child: const LoginPageEtx(),
      ),
    );
  }
}

class LoginPageEtx extends StatefulWidget {
  const LoginPageEtx({Key? key}) : super(key: key);

  @override
  State<LoginPageEtx> createState() => _LoginPageEtxState();
}

class _LoginPageEtxState extends State<LoginPageEtx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LoginDataInheritedWidget(
        username: '',
        password: '',
        child: BlocBuilder<LoginDataBloc, LoginDataState>(
          builder: (context, state) {
            return SafeArea(
              child: SingleChildScrollView(
                child: GestureDetector(
                  onTap: () {
                    SystemChrome.setEnabledSystemUIMode(
                        SystemUiMode.immersiveSticky);
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Column(
                    children: const [
                      TopLogin(),
                      BottomLogin(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TopLogin extends StatelessWidget {
  const TopLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428.w,
      height: 438.h,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/images/bg_login.png",
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 96.h,
          ),
          Image.asset(
            'assets/icons/ic_logo.png',
            width: 259.w,
            height: 210.h,
            fit: BoxFit.contain,
          ),
          // ART TOOL
          Text(AppLocalizations.of(context)!.art_tool,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "UTM-Avo",
                  fontStyle: FontStyle.normal,
                  fontSize: 42.sp),
              textAlign: TextAlign.center),
          // ARIS VIETNAM
          SizedBox(
            height: 5.h,
          ),
          Text(AppLocalizations.of(context)!.ais_vn,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                  fontFamily: "SFCompactDisplay",
                  fontStyle: FontStyle.normal,
                  fontSize: 36.sp),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class BottomLogin extends StatelessWidget {
  const BottomLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428.w,
      height: 488.h,
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          SizedBox(
            height: 71.h,
          ),
          const UserName(),
          SizedBox(
            height: 7.h,
          ),
          const Password(),
          SizedBox(
            height: 7.h,
          ),
          const LoginButton(),
          SizedBox(
            height: 31.h,
          ),
          const TermAndPolicy(),
          SizedBox(
            height: 31.h,
          ),
          const HelpAndForgotPass(),
          SizedBox(
            height: 31.h,
          ),
          const VersionName()
        ],
      ),
    );
  }
}

class UserName extends StatefulWidget {
  const UserName({Key? key}) : super(key: key);
  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (_userNameController.text.isNotEmpty) {
      LoginDataInheritedWidget.of(context)?.username = _userNameController.text;
    }
    _userNameController.addListener(() {
      LoginDataInheritedWidget.of(context)?.username = _userNameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.w,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffc4c8d0),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffffffff)),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/ic_person.png',
            width: 54.w,
            height: 37.h,
          ),
          Expanded(
              child: TextField(
            controller: _userNameController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppLocalizations.of(context)!.user_name,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            ),
            style: const TextStyle(
                color: Color(0xff6e819b),
                fontWeight: FontWeight.w400,
                fontFamily: "UTMNeoSansIntel",
                fontStyle: FontStyle.italic,
                fontSize: 17.0),
            textAlign: TextAlign.left,
          )),
        ],
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final TextEditingController _passwordController = TextEditingController();
  late bool _obscurePassTextField = true;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (_passwordController.text.isNotEmpty) {
      LoginDataInheritedWidget.of(context)?.password = _passwordController.text;
    }
    _passwordController.addListener(() {
      LoginDataInheritedWidget.of(context)?.password = _passwordController.text;
    });
  }

  void _togglePass() {
    setState(() {
      _obscurePassTextField = !_obscurePassTextField;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.w,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffc4c8d0),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffffffff)),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/ic_pass.png',
            width: 54.w,
            height: 37.h,
          ),
          Expanded(
              child: TextField(
            controller: _passwordController,
            obscureText: _obscurePassTextField,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppLocalizations.of(context)!.pass_word,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            ),
            style: const TextStyle(
                color: Color(0xff6e819b),
                fontWeight: FontWeight.w400,
                fontFamily: "UTMNeoSansIntel",
                fontStyle: FontStyle.italic,
                fontSize: 17.0),
            textAlign: TextAlign.left,
          )),
          SizedBox(
            width: 54.w,
            height: 37.h,
            child: GestureDetector(
              onTap: _togglePass,
              child: _obscurePassTextField
                  ? Image.asset("assets/icons/ic_show_pass.png")
                  : Image.asset("assets/icons/ic_hide_pass.png"),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Future<void> _postLoginData(BuildContext context) async {
    var username = LoginDataInheritedWidget.of(context)?.username ?? "";
    var password = LoginDataInheritedWidget.of(context)?.password ?? "";

    if (username.isEmpty) {
      context.showErrorDialog(AppLocalizations.of(context)!.user_name_empty);
      return;
    }
    if (password.isEmpty) {
      context.showErrorDialog(AppLocalizations.of(context)!.pass_empty);
      return;
    }
    BlocProvider.of<LoginDataBloc>(context)
        .add(LoginDataEventRequest(username, password, "FCM KEY1"));
  }

  Future<void> _pushHome(BuildContext context) async {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomePage(),
    ));
  }

  @override
  void initState() {
    super.initState();
    context.read<LoginDataBloc>().stream.listen((event) {
      switch (event.status) {
        case LoginDataStatus.initial:
          break;
        case LoginDataStatus.loading:
          context.showLoadingDialog();
          break;
        case LoginDataStatus.failure:
          context.dismissDialog();
          context.showErrorDialog(event.error!.getErrorMsg());
          break;
        case LoginDataStatus.success:
          _pushHome(context);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.w,
      height: 55.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x8000b1ff),
              offset: Offset(0, 3),
              blurRadius: 25,
              spreadRadius: 0,
            )
          ],
          gradient: const LinearGradient(
              begin: Alignment(1, 0),
              end: Alignment(0, 1),
              colors: [Color(0xff00baff), Color(0xff0d00ff)])),
      child: ElevatedButton(
        onPressed: () {
          _postLoginData(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(
          AppLocalizations.of(context)!.login_btn,
          style: const TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w700,
              fontFamily: "UTMNeoSansIntel",
              fontStyle: FontStyle.normal,
              fontSize: 17.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TermAndPolicy extends StatelessWidget {
  const TermAndPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppLocalizations.of(context)!.term1,
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w400,
                fontFamily: "UTM-Neo-Sans-Intel",
                fontStyle: FontStyle.normal,
                fontSize: 15.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.term21,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontFamily: "UTM-Neo-Sans-Intel",
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline,
                  fontSize: 15.0),
            ),
            Text(
              AppLocalizations.of(context)!.term22,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontFamily: "UTM-Neo-Sans-Intel",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ),
            Text(
              AppLocalizations.of(context)!.term23,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontFamily: "UTM-Neo-Sans-Intel",
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.underline,
                  fontSize: 15.0),
            ),
          ],
        )
      ],
    );
  }
}

class HelpAndForgotPass extends StatelessWidget {
  const HelpAndForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 5.0.w,
        ),
        const ForgotPassButton(),
        SizedBox(
          width: 16.0.w,
        ),
        const HelpButton(),
        SizedBox(
          width: 5.0.w,
        )
      ],
    );
  }
}

class ForgotPassButton extends StatelessWidget {
  const ForgotPassButton({Key? key}) : super(key: key);

  Future<void> _pushForgotPassword(BuildContext context) async {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ForgotPassword(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 183.w,
        height: 44.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0x99ffffff), width: 1),
            color: const Color(0x99000000)),
        child: ElevatedButton(
            onPressed: () {
              _pushForgotPassword(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
            child: Text(AppLocalizations.of(context)!.forgot_pass_btn,
                style: const TextStyle(
                    color: Color(0xffacbcd1),
                    fontWeight: FontWeight.w400,
                    fontFamily: "UTM-Neo-Sans-Intel",
                    fontStyle: FontStyle.normal,
                    fontSize: 17.0),
                textAlign: TextAlign.center)));
  }
}

class HelpButton extends StatelessWidget {
  const HelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 183.w,
        height: 44.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0x99ffffff), width: 1),
            color: const Color(0x99000000)),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
            child: Text(AppLocalizations.of(context)!.help_btn,
                style: const TextStyle(
                    color: Color(0xffacbcd1),
                    fontWeight: FontWeight.w400,
                    fontFamily: "UTM-Neo-Sans-Intel",
                    fontStyle: FontStyle.normal,
                    fontSize: 17.0),
                textAlign: TextAlign.center)));
  }
}

class VersionName extends StatelessWidget {
  const VersionName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.version,
        style: const TextStyle(
            color: Color(0xff6e819b),
            fontWeight: FontWeight.w400,
            fontFamily: "UTM-Neo-Sans-Intel",
            fontStyle: FontStyle.normal,
            fontSize: 13.0));
  }
}

class LoginDataInheritedWidget extends InheritedWidget {
  LoginDataInheritedWidget(
      {required Widget child, required this.username, required this.password})
      : super(child: child);

  String username;
  String password;

  static LoginDataInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LoginDataInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
