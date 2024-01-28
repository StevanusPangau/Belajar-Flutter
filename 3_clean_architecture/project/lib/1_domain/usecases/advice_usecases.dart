import 'package:project/1_domain/entities/advice_entity.dart';

class AdviceUseCases {
  // function ini untuk mengambil data dari API
  Future<AdviceEntity> getAdvice() async {
    // call a repository to get data (Failure or data)
    // Proces the business logic (manipulate data)
    await Future.delayed(const Duration(seconds: 3), () {});
    return const AdviceEntity(advice: "advice to tes", id: 1);
  }
}
