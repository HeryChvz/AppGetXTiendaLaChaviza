import 'package:get/get.dart';

import 'package:app_dos_pantallas/app/modules/home/bindings/home_binding.dart';
import 'package:app_dos_pantallas/app/modules/home/views/home_view.dart';
import 'package:app_dos_pantallas/app/modules/productos/bindings/productos_binding.dart';
import 'package:app_dos_pantallas/app/modules/productos/views/productos_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTOS,
      page: () => ProductosView(),
      binding: ProductosBinding(),
    ),
  ];
}
