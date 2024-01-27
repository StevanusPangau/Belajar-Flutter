part of 'advicer_cubit.dart';

@immutable
sealed class AdvicerCubitState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AdvicerInitial extends AdvicerCubitState {}

class AdvicerStateLoading extends AdvicerCubitState {}

class AdvicerStateLoaded extends AdvicerCubitState {
  final String advice;
  AdvicerStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

class AdvicerStateError extends AdvicerCubitState {
  final String message;
  AdvicerStateError({required this.message});

  @override
  List<Object?> get props => [message];
}
