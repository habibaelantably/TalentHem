class CityListModel {
  int? offset;
  int? limit;
  int count = 0;
  List<CityModel> rows = [];

  CityListModel(
      {this.offset, this.limit, required this.count, required this.rows});

  CityListModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    count = json['count'];
    if (json['rows'] != null) {
      rows = <CityModel>[];
      json['rows'].forEach((v) {
        rows!.add(CityModel.fromJson(v));
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

class CityModel {
  String? id;
  String? name;
  String? state;

  CityModel({
    this.id,
    this.name,
    this.state,
  });

  CityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;

    data['state'] = state;

    return data;
  }
}
