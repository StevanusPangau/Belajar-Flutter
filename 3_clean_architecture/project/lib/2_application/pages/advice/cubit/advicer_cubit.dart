import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:project/1_domain/entities/advice_entity.dart';
import 'package:project/1_domain/usecases/advice_usecases.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUseCases adviceUseCases = AdviceUseCases();
  // ? bisa juga memakai usecase lain

  // ? di Cubit kita harus membuat method sendiri untuk request event
  // bagusnya jika project kecil kita memakai Cubit, jika project besar kita memakai Bloc
  void adviceRequested() async {
    emit(AdvicerStateLoading());

    // ? kita membuat logic proram dari function getAdvice() di usecase
    final AdviceEntity advice = await adviceUseCases.getAdvice();

    emit(AdvicerStateLoaded(advice: advice.advice));
    // emit(AdvicerStateError(message: "Fake error to test bloc"));
  }
}
