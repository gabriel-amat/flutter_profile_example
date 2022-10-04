import 'package:json_annotation/json_annotation.dart';

part 'street_model.g.dart';

@JsonSerializable()
class StreetModel{
  int? number;
  String? name;

  StreetModel({this.name, this.number});

  factory StreetModel.fromJson(Map<String, dynamic> json)
    => _$StreetModelFromJson(json);

  Map<String, dynamic> toJson() => _$StreetModelToJson(this);
}