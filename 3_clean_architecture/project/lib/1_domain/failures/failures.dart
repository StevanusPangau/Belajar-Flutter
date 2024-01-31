// ? failures adalah class yang berisi error yang mungkin terjadi pada aplikasi
abstract class Failure {}

// contoh jika terdapat error pada server/api
class ServerFailure extends Failure {}

// contoh jika terdapat error pada cache
class CacheFailure extends Failure {}

// contoh jika terdapat error yang tidak diketahui
class GeneralFailure extends Failure {}
