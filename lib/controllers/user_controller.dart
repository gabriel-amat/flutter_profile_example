import 'package:flutter_example_users/models/user_model.dart';
import 'package:flutter_example_users/services/user_service.dart';
import 'package:rxdart/rxdart.dart';

class UserController {
  final userService = UserService();

  var userData = BehaviorSubject<UserModel?>();
  Stream<UserModel?> get outUserData => userData.stream;

  Future<void> getUsers(bool update) async {
    if (!userData.hasValue || update) {
      userData.add(null);
      userData.add(await userService.getUserData());
    }
  }
}
