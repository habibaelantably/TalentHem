import 'attachment_model.dart';

/*
"emailVerified":true
"_id":"63904f6314f1c5e1f3561366"
"email":"admin@coderower.com"
"firstName":"admin"
"fullName":"admin"
"avatars":[]
"tenants":[{"roles":["admin"]
"_id":"63904f6814f1c51bc256136b"
"tenant":{"plan":"free"
"planStatus":"active"
"_id":"63904f6514f1c53de5561368"
"name":"default"
"url":"default"
"createdBy":"63904f6314f1c5e1f3561366"
"updatedBy":"63904f6314f1c5e1f3561366"
"createdAt":"2022-12-07T08:31:33.899Z"
"updatedAt":"2022-12-07T08:31:33.899Z"
"__v":0
"id":"63904f6514f1c53de5561368"
"settings":{"_id":"63904f6714f1c5de1156136a"
"theme":"polar-green"
"tenant":"63904f6514f1c53de5561368"
"createdBy":"63904f6314f1c5e1f3561366"
"backgroundImages":[]
"logos":[]
"createdAt":"2022-12-07T08:31:35.784Z"
"updatedAt":"2022-12-07T08:33:06.359Z"
"__v":0
"id":"63904f6714f1c5de1156136a"}}
"status":"active"
"updatedAt":"2022-12-07T08:31:36.219Z"
"createdAt":"2022-12-07T08:31:36.219Z"
"id":"63904f6814f1c51bc256136b"}]
"createdAt":"2022-12-07T08:31:31.675Z"
"updatedAt":"2022-12-07T08:31:36.219Z"
"__v":0
"id":"63904f6314f1c5e1f3561366"
 */

class UserModel {
  bool? emailVerified;
  String? id;
  String? email;
  String? firstName;
  String? fullName;
  List<AttachmentModel>? avatars;
  List<Tenants>? tenants;
  String? createdAt;
  String? updatedAt;

  UserModel(
      {this.emailVerified,
      this.id,
      this.email,
      this.firstName,
      this.fullName,
      this.avatars,
      this.tenants,
      this.createdAt,
      this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    emailVerified = json['emailVerified'];
    id = json['_id'];
    email = json['email'];
    firstName = json['firstName'];
    fullName = json['fullName'];
    if (json['avatars'] != null) {
      avatars = <AttachmentModel>[];
      json['avatars'].forEach((v) {
        avatars!.add(new AttachmentModel.fromJson(v));
      });
    }
    if (json['tenants'] != null) {
      tenants = <Tenants>[];
      json['tenants'].forEach((v) {
        tenants!.add(new Tenants.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailVerified'] = this.emailVerified;
    data['_id'] = this.id;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['fullName'] = this.fullName;
    if (this.avatars != null) {
      data['avatars'] = this.avatars!.map((v) => v.toJson()).toList();
    }
    if (this.tenants != null) {
      data['tenants'] = this.tenants!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Tenants {
  List<String>? roles;
  String? id;
  TenantModel? tenant;
  String? status;
  String? updatedAt;
  String? createdAt;

  Tenants(
      {this.roles,
      this.id,
      this.tenant,
      this.status,
      this.updatedAt,
      this.createdAt});

  Tenants.fromJson(Map<String, dynamic> json) {
    roles = json['roles'].cast<String>();
    id = json['_id'];
    tenant = json['tenant'] != null
        ? new TenantModel.fromJson(json['tenant'])
        : null;
    status = json['status'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roles'] = this.roles;
    data['_id'] = this.id;
    if (this.tenant != null) {
      data['tenant'] = this.tenant!.toJson();
    }
    data['status'] = this.status;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    return data;
  }
}

class TenantModel {
  String? plan;
  String? planStatus;
  String? id;
  String? name;
  String? url;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;
  SettingsModel? settings;

  TenantModel(
      {this.plan,
      this.planStatus,
      this.id,
      this.name,
      this.url,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.settings});

  TenantModel.fromJson(Map<String, dynamic> json) {
    plan = json['plan'];
    planStatus = json['planStatus'];
    id = json['_id'];
    name = json['name'];
    url = json['url'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    settings = json['settings'] != null
        ? new SettingsModel.fromJson(json['settings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plan'] = this.plan;
    data['planStatus'] = this.planStatus;
    data['_id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    return data;
  }
}

class SettingsModel {
  String? id;
  String? theme;
  String? tenant;
  String? createdBy;
  List<AttachmentModel>? backgroundImages;
  List<AttachmentModel>? logos;
  String? createdAt;
  String? updatedAt;

  SettingsModel(
      {this.id,
      this.theme,
      this.tenant,
      this.createdBy,
      this.backgroundImages,
      this.logos,
      this.createdAt,
      this.updatedAt});

  SettingsModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    theme = json['theme'];
    tenant = json['tenant'];
    createdBy = json['createdBy'];
    if (json['backgroundImages'] != null) {
      backgroundImages = <AttachmentModel>[];
      json['backgroundImages'].forEach((v) {
        backgroundImages!.add(new AttachmentModel.fromJson(v));
      });
    }
    if (json['logos'] != null) {
      logos = <AttachmentModel>[];
      json['logos'].forEach((v) {
        logos!.add(new AttachmentModel.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['theme'] = this.theme;
    data['tenant'] = this.tenant;
    data['createdBy'] = this.createdBy;
    if (this.backgroundImages != null) {
      data['backgroundImages'] =
          this.backgroundImages!.map((v) => v.toJson()).toList();
    }
    if (this.logos != null) {
      data['logos'] = this.logos!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
