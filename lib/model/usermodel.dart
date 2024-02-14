// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  String id;
  String name;
  String age;
  String mobileNo;
  String address;
  String pincode;
  String eMail;
  String password;
  String v;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.mobileNo,
    required this.address,
    required this.pincode,
    required this.eMail,
    required this.password,
    required this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    name: json["name"],
    age: json["age"],
    mobileNo: json["mobileNo"],
    address: json["address"],
    pincode: json["pincode"],
    eMail: json["eMail"],
    password: json["password"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "age": age,
    "mobileNo": mobileNo,
    "address": address,
    "pincode": pincode,
    "eMail": eMail,
    "password": password,
    "__v": v,
  };
}
