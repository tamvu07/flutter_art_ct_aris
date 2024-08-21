import 'package:flutter/material.dart';
import 'package:mobile_aris_management_tool/init/index.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: const InitDataModuleWidget(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
