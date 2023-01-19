import "tapriModel.dart";

class ItemListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<ItemModel> rows = [];

  ItemListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  ItemListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <ItemModel>[];
      json['rows'].forEach((v) {
        rows!.add(ItemModel.fromJson(v));
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

class ItemModel {
  String? id;
  String? name;
  String? packing;
  num? price;
  List<TapriModel>? tapris;

  ItemModel({
    this.id,
    this.name,
    this.packing,
    this.price,
    this.tapris,
  });

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    packing = json['packing'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;

    data['packing'] = packing;

    data['price'] = price;

    return data;
  }
}
