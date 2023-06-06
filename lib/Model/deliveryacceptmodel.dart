class deliveryaccept_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  deliveryaccept_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  deliveryaccept_Model.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Metadata {
  int? length;

  Metadata({this.length});

  Metadata.fromJson(Map<String, dynamic> json) {
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['length'] = this.length;
    return data;
  }
}

class Data {
  String? sId;
  String? uid;
  String? dpId;
  String? dateAndTime;
  List<String>? subcatId;
  String? userStatus;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? dpStatus;
  String? cpDateAndTime;
  String? cpId;
  String? cpStatus;

  Data(
      {this.sId,
      this.uid,
      this.dpId,
      this.dateAndTime,
      this.subcatId,
      this.userStatus,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.dpStatus,
      this.cpDateAndTime,
      this.cpId,
      this.cpStatus});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    uid = json['uid'];
    dpId = json['dp_id'];
    dateAndTime = json['date_and_time'];
    subcatId = json['subcat_id'].cast<String>();
    userStatus = json['user_status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    dpStatus = json['dp_status'];
    cpDateAndTime = json['cp_date_and_time'];
    cpId = json['cp_id'];
    cpStatus = json['cp_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['uid'] = this.uid;
    data['dp_id'] = this.dpId;
    data['date_and_time'] = this.dateAndTime;
    data['subcat_id'] = this.subcatId;
    data['user_status'] = this.userStatus;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['dp_status'] = this.dpStatus;
    data['cp_date_and_time'] = this.cpDateAndTime;
    data['cp_id'] = this.cpId;
    data['cp_status'] = this.cpStatus;
    return data;
  }
}
