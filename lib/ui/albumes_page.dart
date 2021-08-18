import 'package:clean_arquitecture_flutter/data/controllers/albumes_controller.dart';
import 'package:clean_arquitecture_flutter/data/models/album_model.dart';
import 'package:clean_arquitecture_flutter/data/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumesPage extends GetView<AlbumesController> {
  @override
  Widget build(BuildContext context) {
    final Usuario usuario = Get.arguments;
    controller.consultarAlbumesUsuario(idUsuario: usuario.id);
    return Scaffold(
      appBar: AppBar(title: Text('Albumes Page para ${usuario.name}')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: controller.obx(
              (listaAlbumes) {
                return ListView.separated(
                  itemCount: listaAlbumes.length,
                  itemBuilder: (_, index) {
                    Album album = listaAlbumes[index];
                    return Text("${album.title}");
                  },
                  separatorBuilder: (_, __) => Divider(),
                );
              },
              onLoading: CircularProgressIndicator(),
              onError: (error) => Text(
                error!,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
