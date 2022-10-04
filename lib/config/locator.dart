import 'package:flutter_example_users/controllers/user_controller.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUpLocators(){
  locator.registerLazySingleton(() => UserController());
}

