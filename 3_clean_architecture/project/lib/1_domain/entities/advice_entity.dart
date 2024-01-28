// ? advice entity digunakan untuk menampung data dari API yang berbeda tipe data

import 'package:equatable/equatable.dart';

class AdviceEntity extends Equatable {
  final String advice;
  final int id;

  const AdviceEntity({required this.advice, required this.id});

  @override
  List<Object?> get props => [advice, id];
}
