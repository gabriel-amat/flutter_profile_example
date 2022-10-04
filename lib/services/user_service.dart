import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_example_users/models/user_model.dart';

class UserService {
  Future<UserModel?> getUserData() async {
    try {
      Response res = await Dio().get('https://randomuser.me/api/');

      return UserModel.fromJson(res.data['results'][0]);
    } on DioError catch (error) {
      debugPrint("GetUsers error $error");
      return null;
    }
  }
}
