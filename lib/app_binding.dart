import 'package:get/get.dart';
import 'controllers/auth_controller.dart';

import 'controllers/cityController.dart';
import 'controllers/marketController.dart';
import 'controllers/tapriController.dart';
import 'controllers/itemController.dart';
import 'controllers/customerController.dart';
import 'controllers/orderController.dart';
import 'controllers/invoiceController.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthenticationController(), permanent: true);

    Get.put(CityController(), permanent: true);
    Get.put(MarketController(), permanent: true);
    Get.put(TapriController(), permanent: true);
    Get.put(ItemController(), permanent: true);
    Get.put(CustomerController(), permanent: true);
    Get.put(OrderController(), permanent: true);
    Get.put(InvoiceController(), permanent: true);
  }
}
