// class LoginModel {
//   String? accessToken;
//   int? id;
//   String? email;
//   Null? profileimg;
//   String? fname;
//   String? lname;
//   Null? fatherhusbandname;
//   String? contactno;
//   Null? officephone;
//   Null? overseasphone;
//   Null? residentialphone;
//   String? address;
//   Null? mailingaddress;
//   Null? officeaddress;
//   Null? nextofkinname;
//   Null? nextofkincnic;
//   Null? nextofkinrelation;
//   Null? passport;
//   Null? batchid;
//   String? city;
//   String? country;
//   Null? state;
//   String? zipcode;
//   String? cnic;
//   Null? gender;
//   Null? maritalstatus;
//   String? dob;
//   Null? occupation;
//   Null? ntnstatus;
//   Null? ntnnum;
//   Null? fbrstatus;
//   Null? businesstype;
//   Null? nationality;
//   Null? overseaslocation;
//   String? password;
//   String? salt;
//   Null? ispossession;
//   Null? completedpossesion;
//   int? otpcode;
//   bool? otpstatus;
//   bool? status;
//   bool? deleted;
//   String? createdAt;
//   String? updatedAt;
//   Null? createdBy;
//   Null? updatedBy;
//   Null? deletedBy;
//   Null? restoredBy;
//   Null? deletedAt;
//   Null? restoredAt;

//   LoginModel(
//       {this.accessToken,
//       this.id,
//       this.email,
//       this.profileimg,
//       this.fname,
//       this.lname,
//       this.fatherhusbandname,
//       this.contactno,
//       this.officephone,
//       this.overseasphone,
//       this.residentialphone,
//       this.address,
//       this.mailingaddress,
//       this.officeaddress,
//       this.nextofkinname,
//       this.nextofkincnic,
//       this.nextofkinrelation,
//       this.passport,
//       this.batchid,
//       this.city,
//       this.country,
//       this.state,
//       this.zipcode,
//       this.cnic,
//       this.gender,
//       this.maritalstatus,
//       this.dob,
//       this.occupation,
//       this.ntnstatus,
//       this.ntnnum,
//       this.fbrstatus,
//       this.businesstype,
//       this.nationality,
//       this.overseaslocation,
//       this.password,
//       this.salt,
//       this.ispossession,
//       this.completedpossesion,
//       this.otpcode,
//       this.otpstatus,
//       this.status,
//       this.deleted,
//       this.createdAt,
//       this.updatedAt,
//       this.createdBy,
//       this.updatedBy,
//       this.deletedBy,
//       this.restoredBy,
//       this.deletedAt,
//       this.restoredAt});

//   LoginModel.fromJson(Map<String, dynamic> json) {
//     accessToken = json['accessToken'];
//     id = json['id'];
//     email = json['email'];
//     profileimg = json['profileimg'];
//     fname = json['fname'];
//     lname = json['lname'];
//     fatherhusbandname = json['fatherhusbandname'];
//     contactno = json['contactno'];
//     officephone = json['officephone'];
//     overseasphone = json['overseasphone'];
//     residentialphone = json['residentialphone'];
//     address = json['address'];
//     mailingaddress = json['mailingaddress'];
//     officeaddress = json['officeaddress'];
//     nextofkinname = json['nextofkinname'];
//     nextofkincnic = json['nextofkincnic'];
//     nextofkinrelation = json['nextofkinrelation'];
//     passport = json['passport'];
//     batchid = json['batchid'];
//     city = json['city'];
//     country = json['country'];
//     state = json['state'];
//     zipcode = json['zipcode'];
//     cnic = json['cnic'];
//     gender = json['gender'];
//     maritalstatus = json['maritalstatus'];
//     dob = json['dob'];
//     occupation = json['occupation'];
//     ntnstatus = json['ntnstatus'];
//     ntnnum = json['ntnnum'];
//     fbrstatus = json['fbrstatus'];
//     businesstype = json['businesstype'];
//     nationality = json['nationality'];
//     overseaslocation = json['overseaslocation'];
//     password = json['password'];
//     salt = json['salt'];
//     ispossession = json['ispossession'];
//     completedpossesion = json['completedpossesion'];
//     otpcode = json['otpcode'];
//     otpstatus = json['otpstatus'];
//     status = json['status'];
//     deleted = json['deleted'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     createdBy = json['createdBy'];
//     updatedBy = json['updatedBy'];
//     deletedBy = json['deletedBy'];
//     restoredBy = json['restoredBy'];
//     deletedAt = json['deletedAt'];
//     restoredAt = json['restoredAt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['accessToken'] = this.accessToken;
//     data['id'] = this.id;
//     data['email'] = this.email;
//     data['profileimg'] = this.profileimg;
//     data['fname'] = this.fname;
//     data['lname'] = this.lname;
//     data['fatherhusbandname'] = this.fatherhusbandname;
//     data['contactno'] = this.contactno;
//     data['officephone'] = this.officephone;
//     data['overseasphone'] = this.overseasphone;
//     data['residentialphone'] = this.residentialphone;
//     data['address'] = this.address;
//     data['mailingaddress'] = this.mailingaddress;
//     data['officeaddress'] = this.officeaddress;
//     data['nextofkinname'] = this.nextofkinname;
//     data['nextofkincnic'] = this.nextofkincnic;
//     data['nextofkinrelation'] = this.nextofkinrelation;
//     data['passport'] = this.passport;
//     data['batchid'] = this.batchid;
//     data['city'] = this.city;
//     data['country'] = this.country;
//     data['state'] = this.state;
//     data['zipcode'] = this.zipcode;
//     data['cnic'] = this.cnic;
//     data['gender'] = this.gender;
//     data['maritalstatus'] = this.maritalstatus;
//     data['dob'] = this.dob;
//     data['occupation'] = this.occupation;
//     data['ntnstatus'] = this.ntnstatus;
//     data['ntnnum'] = this.ntnnum;
//     data['fbrstatus'] = this.fbrstatus;
//     data['businesstype'] = this.businesstype;
//     data['nationality'] = this.nationality;
//     data['overseaslocation'] = this.overseaslocation;
//     data['password'] = this.password;
//     data['salt'] = this.salt;
//     data['ispossession'] = this.ispossession;
//     data['completedpossesion'] = this.completedpossesion;
//     data['otpcode'] = this.otpcode;
//     data['otpstatus'] = this.otpstatus;
//     data['status'] = this.status;
//     data['deleted'] = this.deleted;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['createdBy'] = this.createdBy;
//     data['updatedBy'] = this.updatedBy;
//     data['deletedBy'] = this.deletedBy;
//     data['restoredBy'] = this.restoredBy;
//     data['deletedAt'] = this.deletedAt;
//     data['restoredAt'] = this.restoredAt;
//     return data;
//   }
// }



import 'dart:convert';

class LoginModel {
  String? accessToken;
  int? id;
  String? email;
  String? profileimg;
  String? fname;
  String? lname;
  String? fatherhusbandname;
  String? contactno;
  String? officephone;
  String? overseasphone;
  String? residentialphone;
  String? address;
  String? mailingaddress;
  String? officeaddress;
  String? nextofkinname;
  String? nextofkincnic;
  String? nextofkinrelation;
  String? passport;
  String? batchid;
  String? city;
  String? country;
  String? state;
  String? zipcode;
  String? cnic;
  String? gender;
  String? maritalstatus;
  String? dob;
  String? occupation;
  String? ntnstatus;
  String? ntnnum;
  String? fbrstatus;
  String? businesstype;
  String? nationality;
  String? overseaslocation;
  String? password;
  String? salt;
  String? ispossession;
  String? completedpossesion;
  int? otpcode;
  bool? otpstatus;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  String? createdBy;
  String? updatedBy;
  String? deletedBy;
  String? restoredBy;
  String? deletedAt;
  String? restoredAt;

  LoginModel(
      {this.accessToken,
      this.id,
      this.email,
      this.profileimg,
      this.fname,
      this.lname,
      this.fatherhusbandname,
      this.contactno,
      this.officephone,
      this.overseasphone,
      this.residentialphone,
      this.address,
      this.mailingaddress,
      this.officeaddress,
      this.nextofkinname,
      this.nextofkincnic,
      this.nextofkinrelation,
      this.passport,
      this.batchid,
      this.city,
      this.country,
      this.state,
      this.zipcode,
      this.cnic,
      this.gender,
      this.maritalstatus,
      this.dob,
      this.occupation,
      this.ntnstatus,
      this.ntnnum,
      this.fbrstatus,
      this.businesstype,
      this.nationality,
      this.overseaslocation,
      this.password,
      this.salt,
      this.ispossession,
      this.completedpossesion,
      this.otpcode,
      this.otpstatus,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.deletedBy,
      this.restoredBy,
      this.deletedAt,
      this.restoredAt});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      accessToken: json['accessToken'],
      id: json['id'],
      email: json['email'],
      profileimg: json['profileimg'],
      fname: json['fname'],
      lname: json['lname'],
      fatherhusbandname: json['fatherhusbandname'],
      contactno: json['contactno'],
      officephone: json['officephone'],
      overseasphone: json['overseasphone'],
      residentialphone: json['residentialphone'],
      address: json['address'],
      mailingaddress: json['mailingaddress'],
      officeaddress: json['officeaddress'],
      nextofkinname: json['nextofkinname'],
      nextofkincnic: json['nextofkincnic'],
      nextofkinrelation: json['nextofkinrelation'],
      passport: json['passport'],
      batchid: json['batchid'],
      city: json['city'],
      country: json['country'],
      state: json['state'],
      zipcode: json['zipcode'],
      cnic: json['cnic'],
      gender: json['gender'],
      maritalstatus: json['maritalstatus'],
      dob: json['dob'],
      occupation: json['occupation'],
      ntnstatus: json['ntnstatus'],
      ntnnum: json['ntnnum'],
      fbrstatus: json['fbrstatus'],
      businesstype: json['businesstype'],
      nationality: json['nationality'],
      overseaslocation: json['overseaslocation'],
      password: json['password'],
      salt: json['salt'],
      ispossession: json['ispossession'],
      completedpossesion: json['completedpossesion'],
      otpcode: json['otpcode'],
      otpstatus: json['otpstatus'],
      status: json['status'],
      deleted: json['deleted'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      restoredBy: json['restoredBy'],
      deletedAt: json['deletedAt'],
      restoredAt: json['restoredAt'],
    );
  }
}
