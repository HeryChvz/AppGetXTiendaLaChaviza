import 'package:app_dos_pantallas/app/modules/productos/bindings/productos_binding.dart';
import 'package:get/get.dart';

class ProductosController extends GetxController {
  //TODO: Implement ProductosController

  final count = 0.obs;
  var producto = new ProductosBinding().obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void agregarProducto(String producto) {
    this.producto.update((val) {
      val!.carrito = [...val.carrito, producto];
    });
  }
}
