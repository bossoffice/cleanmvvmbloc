import 'package:clean_mvvm_bloc/template/template_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TemplateState {
  final String title;

  TemplateState({required this.title});
}

class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  TemplateBloc(super.initialState) {
    on<InitEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 5), () {
        TemplateState newState = TemplateState(
          title: "title after delay 5 second",
        );
        emit(newState);
      });
    });
  }
}
