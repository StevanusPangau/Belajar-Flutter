// ignore_for_file: unused_local_variable

void main() {
  int nonNullable = 10; // this value can't be null
  // nonNullable = null; // error

  int? nullable = null; // this value can be null
  // nullable = 10; // no error

  // String description; // not initialized
  late String description;
  description = 'description'; // initialized

  int value =
      nullable!; // non null assertion operator, ensure dart this is not null by time

  int value2 = nullable; // 1 is default value if nullable is null

  String? nullableString = null;
  int stringLength = nullableString?.length ??
      0; // 0 is default value if nullableString is null
}
