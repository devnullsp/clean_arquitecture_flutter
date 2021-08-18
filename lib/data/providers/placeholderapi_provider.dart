import 'package:clean_arquitecture_flutter/data/models/album_model.dart';
import 'package:clean_arquitecture_flutter/data/models/usuario_model.dart';
import 'package:get/get.dart';

class PlaceholderapiProvider extends GetConnect {
  static PlaceholderapiProvider get to => Get.find<PlaceholderapiProvider>();

  @override
  onInit() async {
    httpClient.baseUrl = "http://jsonplaceholder.typicode.com";
  }

  Future<dynamic> getListaUsuarios() async {
    final resultado = await get("/users");
    if (!resultado.isOk) {
      throw ("Error la obtener la lista de usuarios (${resultado.statusCode!}: ${resultado.statusText})");
    }
    return resultado.body.map((e) => Usuario.fromJson(e)).toList();
  }

  Future<dynamic> getAlbumesUsuario({idUsuario}) async {
    final resultado = await get("/albums?userId=$idUsuario");
    if (!resultado.isOk) {
      throw ("Error la obtener la lista de Albumes (${resultado.statusCode!}: ${resultado.statusText})");
    }
    return resultado.body.map((e) => Album.fromJson(e)).toList();
  }
}
