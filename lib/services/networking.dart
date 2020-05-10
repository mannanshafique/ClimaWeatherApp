import 'package:http/http.dart' as http; // because if other person acces he known where the response come from
import 'dart:convert'; //This package is use to decode the json which come from website

class NetworkHelper {
  NetworkHelper(this.url);

  String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
    
      return jsonDecode(data);   
    } else {
      print(response.statusCode);
      print('error');
    }
  }
}
