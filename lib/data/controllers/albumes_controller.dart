import 'package:clean_arquitecture_flutter/data/repository.dart';
import 'package:get/get.dart';

class AlbumesController extends GetxController with StateMixin {
  static AlbumesController get to => Get.find<AlbumesController>();
  final Repositorio repositorio;

  AlbumesController({required this.repositorio});

  @override
  void onInit() {
    change(null, status: RxStatus.empty());
    super.onInit();
  }

  consultarAlbumesUsuario({idUsuario}) async {
    try {
      change(null, status: RxStatus.loading());
      final resultado =
          await repositorio.getAlbumesUsuario(idUsuario: idUsuario);
      change(resultado, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
