import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      // execute business logic
      debugPrint("Fake get advice triggered");
      await Future.delayed(Duration(seconds: 3), () {});
      debugPrint("got advice");
      // emit(AdvicerStateLoaded(advice: "Fake advice to test bloc"));
      emit(AdvicerStateError(message: "Fake error to test bloc"));
    });
  }
}
