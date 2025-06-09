import 'package:clean_mvvm_bloc/template/template_bloc.dart';
import 'package:clean_mvvm_bloc/template/template_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemplateScreen extends StatefulWidget {
  final TemplateState tempateBlocState;
  const TemplateScreen({super.key, required this.tempateBlocState});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initBloc();
  }

  Future initBloc() async {
    BlocProvider.of<TemplateBloc>(context).add(InitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.tempateBlocState.title)),
      body: SafeArea(
        child: Column(children: [ListTile(title: Text("Some"))]),
      ),
    );
  }
}
