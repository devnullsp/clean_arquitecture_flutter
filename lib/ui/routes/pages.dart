import 'package:clean_arquitecture_flutter/ui/albumes_page.dart';
import 'package:clean_arquitecture_flutter/ui/home_page.dart';
import 'package:clean_arquitecture_flutter/ui/routes/bindings.dart';
import 'package:clean_arquitecture_flutter/ui/routes/rutas.dart';
import 'package:clean_arquitecture_flutter/ui/usuarios_page.dart';
import 'package:get/get.dart';

class Paginas {
  static final lista = [
    GetPage(name: Rutas.home, page: () => HomePage()),
    GetPage(
      name: Rutas.usuarios,
      page: () => UsuariosPage(),
      binding: UsuariosBinding(),
    ),
    GetPage(
      name: Rutas.albumes,
      page: () => AlbumesPage(),
      binding: AlbumesBinding(),
    ),
  ];
}
