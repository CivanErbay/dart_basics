import 'dart:io';

void main() async {
  DataFetcher fetcher = DataFetcher();

  String data = await fetcher.getData();
  print(data);
}

class DataFetcher {
  Future<String> _getDataFromCloud() {
    //get Data fron Server/cloud - simulation through sleep-method
    sleep(Duration(seconds: 3));
    print("get finished");
    return Future.value("data from cloud");
  }

  Future<String> _parseDataFromCloud({required String cloudData}) {
    //parse cloud data

    sleep(Duration(seconds: 2));
    print("parsed finished");
    return Future.value("parsed Data");
  }

  Future<String> getData() async {
    String cloudDataRaw = await _getDataFromCloud();
    String parsedData = await _parseDataFromCloud(cloudData: cloudDataRaw);

    //Andere Schreibweise
    String parsedData2 = await _getDataFromCloud().then((_cloudDataRaw) async =>
        await _parseDataFromCloud(cloudData: _cloudDataRaw));

    return parsedData;
  }
}
