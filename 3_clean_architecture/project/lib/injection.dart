import 'package:get_it/get_it.dart';
import 'package:project/0_data/datasources/advice_remote_datasource.dart';
import 'package:project/0_data/repositories/advice_repo_impl.dart';
import 'package:project/1_domain/repositories/advice_repo.dart';
import 'package:project/1_domain/usecases/advice_usecases.dart';
import 'package:project/2_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I; // sl = service locator

Future<void> init() async {
  // ! application layer
  // Factory = every time we ask for an instance, we get a new instance
  sl.registerFactory(() => AdvicerCubit(adviceUseCases: sl()));

  // ! domain layer
  sl.registerFactory(() => AdviceUseCases(adviceRepo: sl()));

  // ! data layer
  sl.registerFactory<AdviceRepo>(
      () => AdviceRepoImpl(adviceRemoteDataSource: sl()));
  sl.registerFactory<AdviceRemoteDataSource>(
      () => AdviceRemoteDataSourceImpl(client: sl()));

  // ! externs
  sl.registerFactory(() => http.Client());
}
