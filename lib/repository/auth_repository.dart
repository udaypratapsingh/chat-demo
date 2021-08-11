import 'dart:convert';

import 'package:chatdemo/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<void> login(User user) async {
    print('attempting login');
    await saveUser(user);
    print('Saved in');
    throw Exception('failed log in');
  }

  Future<bool> SignUp(User user) async {
    print('attempting login');
    try {
      bool success = await saveUser(user);
      print('success = $success');
      return true;
    } catch (error) {
      print('e = $error');
      return false;
    }
  }

  Future<bool> saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool success = await prefs.setString('user', jsonEncode(user.toJson()));
    return success;
  }

  Future<User> fetchUser(String jsonString) async {
    SharedPreferences shared_User = await SharedPreferences.getInstance();
    Map userMap = jsonDecode(shared_User.getString('user'));
    return User.fromJson(userMap);
  }
}
