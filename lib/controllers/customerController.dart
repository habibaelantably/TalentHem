import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/customerModel.dart';
import '../services/customerService.dart';

class CustomerController extends GetxController {
  Future<CustomerListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    CustomerService service = CustomerService();
    CustomerListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<CustomerModel> fetchById({required String id}) async {
    CustomerService service = CustomerService();
    CustomerModel model = await service.find(id: id);
    return model;
  }

  Future<CustomerModel> create(Map<String, dynamic> model) async {
    CustomerService service = CustomerService();
    CustomerModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<CustomerModel> updateData(
      String id, Map<String, dynamic> model) async {
    CustomerService service = CustomerService();
    CustomerModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    CustomerService service = CustomerService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
