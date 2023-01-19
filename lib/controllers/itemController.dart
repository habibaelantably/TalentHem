import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/itemModel.dart';
import '../services/itemService.dart';

class ItemController extends GetxController {
  Future<ItemListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    ItemService service = ItemService();
    ItemListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<ItemModel> fetchById({required String id}) async {
    ItemService service = ItemService();
    ItemModel model = await service.find(id: id);
    return model;
  }

  Future<ItemModel> create(Map<String, dynamic> model) async {
    ItemService service = ItemService();
    ItemModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<ItemModel> updateData(String id, Map<String, dynamic> model) async {
    ItemService service = ItemService();
    ItemModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    ItemService service = ItemService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
