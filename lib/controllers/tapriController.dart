import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/tapriModel.dart';
import '../services/tapriService.dart';

class TapriController extends GetxController {
  Future<TapriListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    TapriService service = TapriService();
    TapriListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<TapriModel> fetchById({required String id}) async {
    TapriService service = TapriService();
    TapriModel model = await service.find(id: id);
    return model;
  }

  Future<TapriModel> create(Map<String, dynamic> model) async {
    TapriService service = TapriService();
    TapriModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<TapriModel> updateData(String id, Map<String, dynamic> model) async {
    TapriService service = TapriService();
    TapriModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    TapriService service = TapriService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
