import 'package:clean_arquitecture_flutter/data/providers/placeholderapi_provider.dart';
import 'package:get/get.dart';

class Repositorio extends GetxController {
  static Repositorio get to => Get.find<Repositorio>();
  final PlaceholderapiProvider proveedor;

  Repositorio({required this.proveedor});

  Future<dynamic> getListaUsuarios() async {
    return await proveedor.getListaUsuarios();
  }

  Future<dynamic> getAlbumesUsuario({idUsuario}) async {
    return await proveedor.getAlbumesUsuario(idUsuario: idUsuario);
  }
}
