import 'package:dartz/dartz.dart';
import 'package:project/1_domain/entities/advice_entity.dart';
import 'package:project/1_domain/failures/failures.dart';

class AdviceUseCases {
  // function ini untuk mengambil data dari API dan mengembalikan data berupa Either<Failure, AdviceEntity>
  // ? Failure adalah class yang berisi error yang mungkin terjadi pada aplikasi (left side)
  // ? AdviceEntity adalah class yang berisi data dari API yang berbeda tipe data (right side)
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    // call a repository to get data (Failure or data)
    // Proces the business logic (manipulate data)
    await Future.delayed(const Duration(seconds: 3), () {});

    // ? [Berhasil] call to repo went good: -> return data not failure
    // return right(const AdviceEntity(advice: "advice to tes", id: 1));

    // ? [Gagal/Error] call to repo went bad or logic had an error: -> return failure not data
    return left(CacheFailure());
  }
}
