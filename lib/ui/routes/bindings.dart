import 'package:clean_arquitecture_flutter/data/controllers/albumes_controller.dart';
import 'package:clean_arquitecture_flutter/data/controllers/usuarios_controller.dart';
import 'package:clean_arquitecture_flutter/data/repository.dart';
import 'package:get/get.dart';

class UsuariosBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsuariosController(repositorio: Repositorio.to));
  }
}

class AlbumesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumesController(repositorio: Repositorio.to));
  }
}
