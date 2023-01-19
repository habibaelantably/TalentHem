import "cityModel.dart";
import "marketModel.dart";
import "itemModel.dart";

class TapriListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<TapriModel> rows = [];

  TapriListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  TapriListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <TapriModel>[];
      json['rows'].forEach((v) {
        rows!.add(TapriModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['offset'] = offset;
    data['limit'] = limit;
    data['count'] = count;
    if (rows != null) {
      data['rows'] = rows!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TapriModel {
  String? id;
  CityModel? city;
  MarketModel? market;
  String? name;
  String? shopNumber;
  String? address;
  List<ItemModel>? items;

  TapriModel({
    this.id,
    this.city,
    this.market,
    this.name,
    this.shopNumber,
    this.address,
    this.items,
  });

  TapriModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'] != null && json['city'].runtimeType != String
        ? new CityModel.fromJson(json['city'])
        : null;
    market = json['market'] != null && json['market'].runtimeType != String
        ? new MarketModel.fromJson(json['market'])
        : null;
    name = json['name'];
    shopNumber = json['shopNumber'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;

    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }

    if (this.market != null) {
      data['market'] = this.market!.toJson();
    }
    data['name'] = name;

    data['shopNumber'] = shopNumber;

    data['address'] = address;

    return data;
  }
}
