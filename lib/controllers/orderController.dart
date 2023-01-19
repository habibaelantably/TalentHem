import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/orderModel.dart';
import '../services/orderService.dart';

class OrderController extends GetxController {
  Future<OrderListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    OrderService service = OrderService();
    OrderListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<OrderModel> fetchById({required String id}) async {
    OrderService service = OrderService();
    OrderModel model = await service.find(id: id);
    return model;
  }

  Future<OrderModel> create(Map<String, dynamic> model) async {
    OrderService service = OrderService();
    OrderModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<OrderModel> updateData(String id, Map<String, dynamic> model) async {
    OrderService service = OrderService();
    OrderModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    OrderService service = OrderService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
