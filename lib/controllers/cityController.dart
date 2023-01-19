import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/cityModel.dart';
import '../services/cityService.dart';

class CityController extends GetxController {
  Future<CityListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    CityService service = CityService();
    CityListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<CityModel> fetchById({required String id}) async {
    CityService service = CityService();
    CityModel model = await service.find(id: id);
    return model;
  }

  Future<CityModel> create(Map<String, dynamic> model) async {
    CityService service = CityService();
    CityModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<CityModel> updateData(String id, Map<String, dynamic> model) async {
    CityService service = CityService();
    CityModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    CityService service = CityService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
