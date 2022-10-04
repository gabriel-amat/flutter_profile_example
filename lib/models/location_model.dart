import 'package:flutter_example_users/models/street_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable(
  explicitToJson: true
)
class UserLocation{
  String? city;
  String? state;
  String? country;
  dynamic postcode;
  StreetModel? street;

  UserLocation({
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.street,
  });

  factory UserLocation.fromJson(Map<String, dynamic> json)
    => _$UserLocationFromJson(json);

  Map<String, dynamic> toJson()
    => _$UserLocationToJson(this);


}
