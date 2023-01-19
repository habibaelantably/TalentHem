import "cityModel.dart";
import "marketModel.dart";
import "tapriModel.dart";

class CustomerListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<CustomerModel> rows = [];

  CustomerListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  CustomerListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <CustomerModel>[];
      json['rows'].forEach((v) {
        rows!.add(CustomerModel.fromJson(v));
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

class CustomerModel {
  String? id;
  CityModel? city;
  MarketModel? market;
  String? name;
  String? address;
  TapriModel? tapri;

  CustomerModel({
    this.id,
    this.city,
    this.market,
    this.name,
    this.address,
    this.tapri,
  });

  CustomerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'] != null && json['city'].runtimeType != String
        ? new CityModel.fromJson(json['city'])
        : null;
    market = json['market'] != null && json['market'].runtimeType != String
        ? new MarketModel.fromJson(json['market'])
        : null;
    name = json['name'];
    address = json['address'];
    tapri = json['tapri'] != null && json['tapri'].runtimeType != String
        ? new TapriModel.fromJson(json['tapri'])
        : null;
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

    data['address'] = address;

    if (this.tapri != null) {
      data['tapri'] = this.tapri!.toJson();
    }
    return data;
  }
}
