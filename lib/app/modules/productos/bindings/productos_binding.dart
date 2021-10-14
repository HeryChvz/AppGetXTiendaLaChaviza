import 'package:get/get.dart';

import '../controllers/productos_controller.dart';

class ProductosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductosController>(
      () => ProductosController(),
    );
  }

  late List<String> carrito;
  ProductosBinding({this.carrito = const []});
}
