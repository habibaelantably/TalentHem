import "customerModel.dart";
import "orderModel.dart";
import "tapriModel.dart";

class InvoiceListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<InvoiceModel> rows = [];

  InvoiceListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  InvoiceListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <InvoiceModel>[];
      json['rows'].forEach((v) {
        rows!.add(InvoiceModel.fromJson(v));
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

class InvoiceModel {
  String? id;
  String? invoiceNumber;
  CustomerModel? customer;
  List<OrderModel>? orders;
  TapriModel? tapri;
  num? totalAmount;
  String? status;
  String? paymentReference;
  String? paymentDetails;

  InvoiceModel({
    this.id,
    this.invoiceNumber,
    this.customer,
    this.orders,
    this.tapri,
    this.totalAmount,
    this.status,
    this.paymentReference,
    this.paymentDetails,
  });

  InvoiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    invoiceNumber = json['invoiceNumber'];
    customer =
        json['customer'] != null && json['customer'].runtimeType != String
            ? new CustomerModel.fromJson(json['customer'])
            : null;
    tapri = json['tapri'] != null && json['tapri'].runtimeType != String
        ? new TapriModel.fromJson(json['tapri'])
        : null;
    totalAmount = json['totalAmount'];
    status = json['status'];
    paymentReference = json['paymentReference'];
    paymentDetails = json['paymentDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['invoiceNumber'] = invoiceNumber;

    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }

    if (this.tapri != null) {
      data['tapri'] = this.tapri!.toJson();
    }
    data['totalAmount'] = totalAmount;

    data['status'] = status;

    data['paymentReference'] = paymentReference;

    data['paymentDetails'] = paymentDetails;

    return data;
  }
}
