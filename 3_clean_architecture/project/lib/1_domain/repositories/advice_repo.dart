import 'package:dartz/dartz.dart';
import 'package:project/1_domain/failures/failures.dart';

import '../entities/advice_entity.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource();
}
