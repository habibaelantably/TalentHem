import 'dart:convert';
import 'package:http/http.dart' as http;
import 'authService.dart';
import '../models/orderModel.dart';
import '../config/config.dart';
import '../models/autocomplete_model.dart';

String serverAddress = Config.baseURL;
String tenant = Config.tenant;

class OrderService {
  Future<OrderListModel> list({
    required int limit,
    required int offset,
    String? orderBy,
  }) async {
    String token = await AuthenticationService().getAtuthToken();

    try {
      var response = await http.get(
          Uri.parse(
              '$serverAddress/tenant/$tenant/order?orderBy=${orderBy ?? ""}&limit=$limit&offset=$offset'),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json; charset=UTF-8',
          });

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        OrderListModel orderlist = OrderListModel.fromJson(jsonResponse);
        return orderlist;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<OrderModel> find({required String id}) async {
    String token = await AuthenticationService().getAtuthToken();

    try {
      var response = await http.get(
          Uri.parse('$serverAddress/tenant/$tenant/order/$id'),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json; charset=UTF-8',
          });

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        OrderModel order = OrderModel.fromJson(jsonResponse);
        return order;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<OrderModel> create(Map<String, dynamic> model) async {
    String token = await AuthenticationService().getAtuthToken();

    try {
      var response =
          await http.post(Uri.parse('$serverAddress/tenant/$tenant/order'),
              headers: <String, String>{
                'Authorization': 'Bearer $token',
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode({"data": model}));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);

        OrderModel order = OrderModel.fromJson(jsonResponse);
        return order;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<OrderModel> update(String id, Map<String, dynamic> model) async {
    String token = await AuthenticationService().getAtuthToken();

    try {
      var response =
          await http.put(Uri.parse('$serverAddress/tenant/$tenant/order/$id'),
              headers: <String, String>{
                'Authorization': 'Bearer $token',
                'Content-Type': 'application/json; charset=UTF-8',
              },
              body: jsonEncode({"data": model}));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);

        OrderModel order = OrderModel.fromJson(jsonResponse);
        return order;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<AutocompleteModel>> autocomplete(String pattern) async {
    String token = await AuthenticationService().getAtuthToken();

    try {
      var response = await http.get(
          Uri.parse(
              '$serverAddress/tenant/$tenant/order/autocomplete?query=$pattern'),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json; charset=UTF-8',
          });

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);

        List<AutocompleteModel> suggestions = [];

        if (jsonResponse != null) {
          jsonResponse.forEach((v) {
            suggestions!.add(AutocompleteModel.fromJson(v));
          });
        }

        return suggestions;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
