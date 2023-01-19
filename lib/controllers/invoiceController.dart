import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/invoiceModel.dart';
import '../services/invoiceService.dart';

class InvoiceController extends GetxController {
  Future<InvoiceListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    InvoiceService service = InvoiceService();
    InvoiceListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<InvoiceModel> fetchById({required String id}) async {
    InvoiceService service = InvoiceService();
    InvoiceModel model = await service.find(id: id);
    return model;
  }

  Future<InvoiceModel> create(Map<String, dynamic> model) async {
    InvoiceService service = InvoiceService();
    InvoiceModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<InvoiceModel> updateData(String id, Map<String, dynamic> model) async {
    InvoiceService service = InvoiceService();
    InvoiceModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    InvoiceService service = InvoiceService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
