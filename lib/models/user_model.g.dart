// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      picture: json['picture'] == null
          ? null
          : PictureModel.fromJson(json['picture'] as Map<String, dynamic>),
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] == null
          ? null
          : UserLocation.fromJson(json['location'] as Map<String, dynamic>),
      login: json['login'] == null
          ? null
          : LoginModel.fromJson(json['login'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : UserNameModel.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'login': instance.login?.toJson(),
      'name': instance.name?.toJson(),
      'location': instance.location?.toJson(),
      'picture': instance.picture?.toJson(),
    };
