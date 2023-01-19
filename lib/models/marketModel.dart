import "cityModel.dart";

class MarketListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<MarketModel> rows = [];

  MarketListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  MarketListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <MarketModel>[];
      json['rows'].forEach((v) {
        rows!.add(MarketModel.fromJson(v));
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

class MarketModel {
  String? id;
  CityModel? city;
  String? name;

  MarketModel({
    this.id,
    this.city,
    this.name,
  });

  MarketModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'] != null && json['city'].runtimeType != String
        ? new CityModel.fromJson(json['city'])
        : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;

    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['name'] = name;

    return data;
  }
}
