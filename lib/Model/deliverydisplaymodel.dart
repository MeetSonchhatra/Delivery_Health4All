class deliverydisplay_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  deliverydisplay_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  deliverydisplay_Model.fromJson(Map<String, dynamic> json) {
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
  String? createdAt;
  String? updatedAt;
  int? iV;
  List<VehicleInfos>? vehicleInfos;

  Data(
      {this.sId,
      this.fullName,
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
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.vehicleInfos});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
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
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    if (json['vehicle_infos'] != null) {
      vehicleInfos = <VehicleInfos>[];
      json['vehicle_infos'].forEach((v) {
        vehicleInfos!.add(new VehicleInfos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
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
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    if (this.vehicleInfos != null) {
      data['vehicle_infos'] =
          this.vehicleInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VehicleInfos {
  String? sId;
  String? vehicelNum;
  String? vehicelPhoto;
  String? rcBookFront;
  String? rcBookBack;
  String? pUC;
  String? insurance;
  String? cpId;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? iV;

  VehicleInfos(
      {this.sId,
      this.vehicelNum,
      this.vehicelPhoto,
      this.rcBookFront,
      this.rcBookBack,
      this.pUC,
      this.insurance,
      this.cpId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.iV});

  VehicleInfos.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    vehicelNum = json['vehicel_num'];
    vehicelPhoto = json['vehicel_photo'];
    rcBookFront = json['rc_book_front'];
    rcBookBack = json['rc_book_back'];
    pUC = json['PUC'];
    insurance = json['insurance'];
    cpId = json['cp_id'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['vehicel_num'] = this.vehicelNum;
    data['vehicel_photo'] = this.vehicelPhoto;
    data['rc_book_front'] = this.rcBookFront;
    data['rc_book_back'] = this.rcBookBack;
    data['PUC'] = this.pUC;
    data['insurance'] = this.insurance;
    data['cp_id'] = this.cpId;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
