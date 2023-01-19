import "customerModel.dart";
import "tapriModel.dart";
import "itemModel.dart";

class OrderListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<OrderModel> rows = [];

  OrderListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  OrderListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <OrderModel>[];
      json['rows'].forEach((v) {
        rows!.add(OrderModel.fromJson(v));
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

class OrderModel {
  String? id;
  DateTime? orderedAt;
  CustomerModel? customer;
  TapriModel? tapri;
  List<ItemModel>? items;
  bool? isDelivered;

  OrderModel({
    this.id,
    this.orderedAt,
    this.customer,
    this.tapri,
    this.items,
    this.isDelivered,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderedAt = DateTime.parse(json['orderedAt']!);
    customer =
        json['customer'] != null && json['customer'].runtimeType != String
            ? new CustomerModel.fromJson(json['customer'])
            : null;
    tapri = json['tapri'] != null && json['tapri'].runtimeType != String
        ? new TapriModel.fromJson(json['tapri'])
        : null;
    isDelivered = json['isDelivered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['orderedAt'] = orderedAt;

    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }

    if (this.tapri != null) {
      data['tapri'] = this.tapri!.toJson();
    }

    data['isDelivered'] = isDelivered;

    return data;
  }
}
