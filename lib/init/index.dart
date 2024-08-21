import 'dart:convert';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/init/bloc/init_data_bloc.dart';
import 'package:mobile_aris_management_tool/init/bloc/init_data_state.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_repository.dart';
import 'package:mobile_aris_management_tool/init/widgets/init_widget.dart';
import 'bloc/init_data_event.dart';
import 'bloc/init_data_state.dart';

class InitDataModuleWidget extends StatelessWidget{
  const InitDataModuleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InitDataBloc(initRepository: context.read<InitDataRepository>()),
      child: const InitDataWidget(),
    );
  }
}

class InitDataWidget extends StatelessWidget{

  const InitDataWidget({Key? key}) : super(key: key);

  Widget buildInfoWidget(InitDataState state){
    switch(state.status){
      case InitDataStatus.success:
        return InitInfoWidget(initDataString: jsonEncode(state.data!));
      case InitDataStatus.failure:
        return InitMessageWidget(message: state.error!.exception.toString());
      case InitDataStatus.loading:
        return const Center(
            child:  CircularProgressIndicator(strokeWidth: 2)
        );
      default: {
        return Container();
      }
    }
  }

  Widget buildLoading(){
    return const Center(
      child:  CircularProgressIndicator(strokeWidth: 2)
    );
  }

  void _getInitData(BuildContext context){
    BlocProvider.of<InitDataBloc>(context).add(const InitDataEventRequest());
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<InitDataBloc, InitDataState>(builder: (context, state){
      return Column(
            children: [
              Expanded(child: buildInfoWidget(state)),
              Center(
                child: TextButton(
                  onPressed: () { _getInitData(context); },
                  child: Text(AppLocalizations.of(context)!.actionFetch),
                ),
              )
            ],
          );
    });
  }

}