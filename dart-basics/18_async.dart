void main() async {
  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    // get data from cloud -> time
    await Future.delayed(Duration(seconds: 4));
    print("get data from cloud finished");
    return "fake data from cloud finished";
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    // get data from cloud -> time
    await Future.delayed(Duration(seconds: 2));
    print("parse data from cloud finished");
    return "parse data from cloud";
  }

  Future<String> getData() async {
    final String dataFromCloud = await _getDataFromCloud();
    final String parseData =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    // ! alternative way syntax
    /*final String parseData =
        await _getDataFromCloud().then((dataFromCloud) async {
      return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    });*/

    return parseData;
    // get data -> time
    // parse data -> time
    // return data
  }
}
