import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  // ? di Cubit kita harus membuat method sendiri untuk request event
  // bagusnya jika project kecil kita memakai Cubit, jika project besar kita memakai Bloc
  void adviceRequested() async {
    emit(AdvicerStateLoading());
    // execute business logic
    debugPrint("Fake get advice triggered");
    await Future.delayed(const Duration(seconds: 3), () {});
    debugPrint("got advice");
    emit(AdvicerStateLoaded(advice: "Fake advice to test bloc"));
    // emit(AdvicerStateError(message: "Fake error to test bloc"));
  }
}
