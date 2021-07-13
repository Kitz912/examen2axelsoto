import 'package:apiaxelti53/model/api_model.dart';
import 'package:dio/dio.dart';

class apiProvider {
  final _url =
      'https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations';
  final _http = Dio();

  Future<List<ApiModel>> obtenerapi(int pagina) async {
    List<ApiModel> _apival = [];
    final response = await _http.get(_url, queryParameters: {'offset': pagina});
    List<dynamic> data = response.data['results'];
    for (int i = 0; i < data.length; i++) {
      final responseapi = await _http.get(data[i]['url']);
    }

    return _apival;
  }
}
