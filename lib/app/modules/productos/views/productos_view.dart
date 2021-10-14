import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/productos_controller.dart';

class ProductosView extends GetView<ProductosController> {
  @override
  Widget build(BuildContext context) => view;

  final productoController = Get.find<ProductosController>();
  String nombre = '';

  Widget get view => Scaffold(
        appBar: appBar,
        body: body,
        backgroundColor: Colors.indigo,
      );

  PreferredSizeWidget get appBar => AppBar(
        title: Text('Productos'),
        backgroundColor: Colors.purple,
      );

  Widget get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getTextField(),
            getButtonAdd(),
          ],
        ),
      );

  Widget getTextField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Nombre del producto',
        labelText: 'Nombre del producto',
        helperText: 'Introduce un producto',
      ),
      onChanged: (valor) {
        nombre = valor;
      },
    );
  }

  Widget getButtonAdd() {
    return ElevatedButton(
      onPressed: () {
        productoController.agregarProducto(nombre);
      },
      child: const Text('Añadir'),
    );
  }
}
