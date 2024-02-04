import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/0_data/exceptions/exceptions.dart';

import '../models/advice_model.dart';

abstract class AdviceRemoteDataSource {
  /// requests random advice from the API
  /// return [AdviceModel] if success
  /// throws a server-exception if status code is not 200
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDataSourceImpl implements AdviceRemoteDataSource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final response = await client.get(
        Uri.parse('https://api.flutter-community.com/api/v1/advice'),
        headers: {'content-type': 'application/json'});

    if (response.statusCode != 200) {
      throw ServerExceptions();
    } else {
      final responseBody = json.decode(response.body);
      return AdviceModel.fromJson(responseBody);
    }
  }
}
