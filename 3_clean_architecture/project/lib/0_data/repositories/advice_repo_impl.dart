import 'package:dartz/dartz.dart';
import 'package:project/0_data/datasources/advice_remote_datasource.dart';
import 'package:project/1_domain/entities/advice_entity.dart';
import 'package:project/1_domain/failures/failures.dart';
import 'package:project/1_domain/repositories/advice_repo.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDataSource adviceRemoteDataSource =
      AdviceRemoteDataSourceImpl();

  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() async {
    final result = await adviceRemoteDataSource.getRandomAdviceFromApi();
    return right(result);
  }
}
