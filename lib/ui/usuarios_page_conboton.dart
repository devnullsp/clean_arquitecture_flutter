import 'package:clean_arquitecture_flutter/data/controllers/usuarios_controller.dart';
import 'package:clean_arquitecture_flutter/data/models/usuario_model.dart';
import 'package:clean_arquitecture_flutter/ui/routes/rutas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsuariosPage extends GetView<UsuariosController> {
  @override
  Widget build(BuildContext context) {
    controller.consultarUsuarios();
    return Scaffold(
      appBar: AppBar(title: Text('Usuarios Page')),
      floatingActionButton: FloatingActionButton(
        child: Text("R"),
        onPressed: controller.consultarUsuarios(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: controller.obx(
              (listaUsuarios) {
                return ListView.separated(
                  itemCount: listaUsuarios.length,
                  itemBuilder: (_, index) {
                    Usuario usuario = listaUsuarios[index];
                    return GestureDetector(
                      child: Text("${usuario.id.toString()} ${usuario.name}"),
                      onTap: () =>
                          Get.toNamed(Rutas.albumes, arguments: usuario),
                    );
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
