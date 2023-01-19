import 'package:get/get.dart';
import '../models/autocomplete_model.dart';

import '../models/marketModel.dart';
import '../services/marketService.dart';

class MarketController extends GetxController {
  Future<MarketListModel> fetchList({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    MarketService service = MarketService();
    MarketListModel listModel =
        await service.list(limit: limit, offset: offset, orderBy: orderBy);

    return listModel;
  }

  Future<MarketModel> fetchById({required String id}) async {
    MarketService service = MarketService();
    MarketModel model = await service.find(id: id);
    return model;
  }

  Future<MarketModel> create(Map<String, dynamic> model) async {
    MarketService service = MarketService();
    MarketModel savedModel = await service.create(model);
    return savedModel;
  }

  Future<MarketModel> updateData(String id, Map<String, dynamic> model) async {
    MarketService service = MarketService();
    MarketModel savedModel = await service.update(id, model);
    return savedModel;
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    MarketService service = MarketService();
    List<AutocompleteModel> suggestions = await service.autocomplete(pattern);
    return suggestions;
  }
}
