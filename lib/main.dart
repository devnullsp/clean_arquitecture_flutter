import 'package:clean_arquitecture_flutter/data/providers/placeholderapi_provider.dart';
import 'package:clean_arquitecture_flutter/data/repository.dart';
import 'package:clean_arquitecture_flutter/ui/routes/pages.dart';
import 'package:clean_arquitecture_flutter/ui/routes/rutas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(Repositorio(proveedor: Get.put(PlaceholderapiProvider())));

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Rutas.home,
    getPages: Paginas.lista,
  ));
}
