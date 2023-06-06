class DeliveryRegister_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  DeliveryRegister_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  DeliveryRegister_Model.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
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
      data['data'] = this.data!.toJson();
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
  String? fullName;
  String? licence;
  String? fullAddress;
  String? iDCard;
  String? status;
  String? birthDate;
  String? gender;
  String? password;
  int? mobileNum;
  String? emailid;
  String? photo;
  String? id;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.fullName,
      this.licence,
      this.fullAddress,
      this.iDCard,
      this.status,
      this.birthDate,
      this.gender,
      this.password,
      this.mobileNum,
      this.emailid,
      this.photo,
      this.id,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    licence = json['licence'];
    fullAddress = json['full_address'];
    iDCard = json['ID_card'];
    status = json['status'];
    birthDate = json['birth_date'];
    gender = json['gender'];
    password = json['password'];
    mobileNum = json['mobile_num'];
    emailid = json['emailid'];
    photo = json['photo'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['_v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    data['licence'] = this.licence;
    data['full_address'] = this.fullAddress;
    data['ID_card'] = this.iDCard;
    data['status'] = this.status;
    data['birth_date'] = this.birthDate;
    data['gender'] = this.gender;
    data['password'] = this.password;
    data['mobile_num'] = this.mobileNum;
    data['emailid'] = this.emailid;
    data['photo'] = this.photo;
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['_v'] = this.iV;
    return data;
  }
}
