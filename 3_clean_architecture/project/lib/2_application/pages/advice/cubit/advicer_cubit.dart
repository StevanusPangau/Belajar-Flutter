import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:project/1_domain/failures/failures.dart';
import 'package:project/1_domain/usecases/advice_usecases.dart';

part 'advicer_state.dart';

// ? var string untuk menampung pesan error
const generalFailureMessage = 'Something went wrong. Please try again later';
const serverFailureMessage = 'Ups, API Error. Please try again later';
const cacheFailureMessage = 'Ups, Cache failed. Please try again later';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUseCases adviceUseCases = AdviceUseCases();
  // ? bisa juga memakai usecase lain

  // ? di Cubit kita harus membuat method sendiri untuk request event
  // bagusnya jika project kecil kita memakai Cubit, jika project besar kita memakai Bloc
  void adviceRequested() async {
    // ? kita membuat logic proram dari function getAdvice() di usecase untuk mengecek apakah data berhasil diambil atau tidak
    emit(AdvicerStateLoading());
    final failureOrAdvice = await adviceUseCases.getAdvice();
    failureOrAdvice.fold(
        (failure) =>
            emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
        (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
  }

  // ? _mapFailureToMessage adalah function untuk melihat error yang terjadi
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      default:
        return generalFailureMessage;
    }
  }
}
