import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/forgotPassword/bloc/forgot_password_data_state.dart';
import 'dart:developer' show log;
import '../forgotPassword/bloc/forgot_password_data_bloc.dart';
import '../forgotPassword/bloc/forgot_password_data_event.dart';
import '../forgotPassword/domain/services/forgot_password_remote_data_source_impl.dart';
import '../forgotPassword/domain/services/forgot_password_repository_impl.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  var defaultInitDataSource =
      DefaultForgotPasswordRepository(DefaultForgotPasswordRemoteDataSource());

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => defaultInitDataSource,
      child: BlocProvider(
        create: (context) => ForgotPasswordDataBloc(
            forgotPasswordDataRepository: defaultInitDataSource),
        child: const ForgotPasswordEtx(),
      ),
    );
  }
}

class ForgotPasswordEtx extends StatelessWidget {
  const ForgotPasswordEtx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ForgotPasswordDataInheritedWidget(
        email: '',
        password: '',
        repassword: '',
        child: BlocBuilder<ForgotPasswordDataBloc, ForgotPasswordDataState>(
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
                    TopForgotPassword(),
                    BottomForgotPassword(),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class TopForgotPassword extends StatelessWidget {
  const TopForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 16.w),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/icons/ic_back.png',
                        width: 30, height: 30)),
                const SizedBox(width: 10),
                Text(AppLocalizations.of(context)!.forgot_pass_btn,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomForgotPassword extends StatelessWidget {
  const BottomForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428.w,
      height: 488.h,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          const EmailTitle(),
          SizedBox(
            height: 12.h,
          ),
          const EmailText(),
          SizedBox(
            height: 7.h,
          ),
          const PasswordlTitle(),
          SizedBox(
            height: 12.h,
          ),
          const PasswordText(),
          SizedBox(
            height: 7.h,
          ),
          const RePasswordlTitle(),
          SizedBox(
            height: 12.h,
          ),
          const RePasswordText(),
          SizedBox(
            height: 7.h,
          ),
          const ConfirmButton(),
        ],
      ),
    );
  }
}

class EmailTitle extends StatelessWidget {
  const EmailTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.staffListEmail,
          style: const TextStyle(
              color: Color(0xff00132d),
              fontWeight: FontWeight.w900,
              fontFamily: "UTMNeoSansIntelBold",
              fontStyle: FontStyle.normal,
              fontSize: 17.0),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

class EmailText extends StatefulWidget {
  const EmailText({Key? key}) : super(key: key);
  @override
  State<EmailText> createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      ForgotPasswordDataInheritedWidget.of(context)?.email =
          _emailController.text;
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
          Expanded(
              child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:
                  AppLocalizations.of(context)!.hint_email_forgot_password,
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

class PasswordlTitle extends StatelessWidget {
  const PasswordlTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.password_forgot_password,
          style: const TextStyle(
              color: Color(0xff00132d),
              fontWeight: FontWeight.w900,
              fontFamily: "UTMNeoSansIntelBold",
              fontStyle: FontStyle.normal,
              fontSize: 17.0),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

class PasswordText extends StatefulWidget {
  const PasswordText({Key? key}) : super(key: key);
  @override
  State<PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
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
    _passwordController.addListener(() {
      ForgotPasswordDataInheritedWidget.of(context)?.password =
          _passwordController.text;
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
          Expanded(
              child: TextField(
            controller: _passwordController,
            obscureText: _obscurePassTextField,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:
                  AppLocalizations.of(context)!.hint_password_forgot_password,
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

class ConfirmButton extends StatefulWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  Future<void> _confirmData(BuildContext context) async {
    var email = ForgotPasswordDataInheritedWidget.of(context)?.email ?? "";
    var password =
        ForgotPasswordDataInheritedWidget.of(context)?.password ?? "";
    var repassword =
        ForgotPasswordDataInheritedWidget.of(context)?.repassword ?? "";
    if (email.isEmpty) {
      context.showErrorDialog(
          AppLocalizations.of(context)!.email_empty_forgot_password);
      return;
    }
    if (password.isEmpty) {
      context.showErrorDialog(AppLocalizations.of(context)!.pass_empty);
      return;
    }
    if (repassword.isEmpty) {
      context.showErrorDialog(AppLocalizations.of(context)!.repass_empty);
      return;
    }

    if (password != repassword) {
      context.showErrorDialog("Vui lòng nhập mật khẩu giống nhau");
      return;
    }

    context
        .read<ForgotPasswordDataBloc>()
        .add(ForgotPasswordEventRequest(email, password));
  }

  @override
  void initState() {
    super.initState();
    context.read<ForgotPasswordDataBloc>().stream.listen((event) {
      log("${event.status}");
      switch (event.status) {
        case ForgotPasswordDataStatus.initial:
          break;
        case ForgotPasswordDataStatus.loading:
          context.showLoadingDialog();
          break;
        case ForgotPasswordDataStatus.failure:
          context.dismissDialog();
          context.showErrorDialog(event.error!.getErrorMsg());
          break;
        case ForgotPasswordDataStatus.success:
          context.showErrorDialog("thanh cong");
          Navigator.of(context).pop();
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
          gradient: const LinearGradient(
              begin: Alignment(1, 0),
              end: Alignment(0, 1),
              colors: [Color(0xff0d00ff), Color(0xff0d00ff)])),
      child: ElevatedButton(
        onPressed: () {
          _confirmData(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(
          AppLocalizations.of(context)!.confirm_forgot_password,
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

class ForgotPasswordDataInheritedWidget extends InheritedWidget {
  ForgotPasswordDataInheritedWidget(
      {required Widget child,
      required this.email,
      required this.password,
      required this.repassword})
      : super(child: child);

  String email;
  String password;
  String repassword;

  static ForgotPasswordDataInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        ForgotPasswordDataInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class RePasswordlTitle extends StatelessWidget {
  const RePasswordlTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.repassword_forgot_password,
          style: const TextStyle(
              color: Color(0xff00132d),
              fontWeight: FontWeight.w900,
              fontFamily: "UTMNeoSansIntelBold",
              fontStyle: FontStyle.normal,
              fontSize: 17.0),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

class RePasswordText extends StatefulWidget {
  const RePasswordText({Key? key}) : super(key: key);
  @override
  State<RePasswordText> createState() => _RePasswordTextState();
}

class _RePasswordTextState extends State<RePasswordText> {
  final TextEditingController _repasswordController = TextEditingController();
  late bool _obscurePassTextField = true;

  @override
  void dispose() {
    _repasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _repasswordController.addListener(() {
      ForgotPasswordDataInheritedWidget.of(context)?.repassword =
          _repasswordController.text;
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
          Expanded(
              child: TextField(
            controller: _repasswordController,
            obscureText: _obscurePassTextField,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:
                  AppLocalizations.of(context)!.hint_repassword_forgot_password,
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
