import 'package:flutter_example_users/models/location_model.dart';
import 'package:flutter_example_users/models/login_model.dart';
import 'package:flutter_example_users/models/picture_model.dart';
import 'package:flutter_example_users/models/user_name_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String? gender;
  String? email;
  String? phone;
  LoginModel? login;
  UserNameModel? name;
  UserLocation? location;
  PictureModel? picture;

  UserModel({
    this.picture,
    this.gender,
    this.email,
    this.phone,
    this.location,
    this.login,
    this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
