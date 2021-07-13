import 'package:apiaxelti53/model/api_model.dart';
import 'package:apiaxelti53/providers/api_providers.dart';
import 'package:get/get.dart';

class apivalState extends GetxController {
  List<ApiModel> api = [];
  final _apiProvider = apiProvider();
  int _pagina = 0;

  Future<void> obtenerapi() async {
    final apiList = await _apiProvider.obtenerapi(_pagina);
    api.addAll(apiList);
    _pagina += 20;
    update();
  }
}
