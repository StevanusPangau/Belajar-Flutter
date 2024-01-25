part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerEvent {}

class AdviceRequestEvent extends AdvicerEvent {}
