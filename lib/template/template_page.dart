import 'package:clean_mvvm_bloc/template/template_bloc.dart';
import 'package:clean_mvvm_bloc/template/template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemplatePayload {}

class TemplatePage extends StatelessWidget {
  TemplatePage({super.key});
  final bloc = TemplateBloc(TemplateState(title: 'Template Page'));

  @override
  Widget build(BuildContext context) {
    // final _ = ModalRoute.of(context)?.settings.arguments as TemplatePayload?;
    return BlocProvider<TemplateBloc>(
      create: (context) => bloc,
      child: BlocBuilder<TemplateBloc, TemplateState>(
        builder: (BuildContext context, TemplateState state) {
          return TemplateScreen(tempateBlocState: state);
        },
      ),
    );
  }
}
