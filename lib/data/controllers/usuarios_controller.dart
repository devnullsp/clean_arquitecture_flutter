import 'package:clean_arquitecture_flutter/data/repository.dart';
import 'package:get/get.dart';

class UsuariosController extends GetxController with StateMixin {
  static UsuariosController get to => Get.find<UsuariosController>();
  final Repositorio repositorio;

  UsuariosController({required this.repositorio});

  @override
  void onInit() {
    change(null, status: RxStatus.empty());
    super.onInit();
  }

  consultarUsuarios() async {
    try {
      change(null, status: RxStatus.loading());
      final resultado = await repositorio.getListaUsuarios();
      change(resultado, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
