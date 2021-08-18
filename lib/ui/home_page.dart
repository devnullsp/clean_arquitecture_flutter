import 'package:clean_arquitecture_flutter/ui/routes/rutas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: SafeArea(
            child: Center(
          child: ElevatedButton(
            onPressed: () => Get.offAndToNamed(Rutas.usuarios),
            child: Text('Lista de usuarios'),
          ),
        )));
  }
}
