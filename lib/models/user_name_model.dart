import 'package:json_annotation/json_annotation.dart';

part 'user_name_model.g.dart';

@JsonSerializable()
class UserNameModel {
  String title;
  String first;
  String last;

  UserNameModel({
    required this.title,
    required this.first,
    required this.last,
  });

  factory UserNameModel.fromJson(Map<String, dynamic> json) =>
      _$UserNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserNameModelToJson(this);
}
