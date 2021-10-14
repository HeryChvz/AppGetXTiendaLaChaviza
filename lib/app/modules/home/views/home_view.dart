import 'package:app_dos_pantallas/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => view;

  Widget get view => Scaffold(
        appBar: appBar,
        body: body,
        backgroundColor: Colors.indigo,
      );

  PreferredSizeWidget get appBar => AppBar(
        title: Text('Tienda "La Chaviza"'),
        backgroundColor: Colors.purple,
      );

  Widget get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getColumnWithImageAndText(
              imageAsset: 'assets/images/productos.png',
              title: 'Productos',
              onTap: () => Get.toNamed(Routes.PRODUCTOS),
            ),
          ],
        ),
      );

  Widget getColumnWithImageAndText({
    String imageAsset = '',
    String title = '',
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Image.asset(
            imageAsset,
            width: 120,
            height: 120,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 48),
          )
        ],
      ),
    );
  }
}
