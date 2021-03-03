import 'file:///F:/FLUTTER21/e-learning-app-main/lib/models/helpers/user/user_login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

/*
  int userId;
  String name;
  String email;
  String phone;
  String emailVerifiedAt;
  String roleId;
  String roleName;
  String dateHuman;
  String token;
 */

    prefs.setInt("userId", user.roleId);
    prefs.setString("name", user.name);
    prefs.setString("email", user.email);
    prefs.setString("phone", user.phone);
    prefs.setString("emailVerifiedAt", user.emailVerifiedAt);
    prefs.setInt("roleId", user.roleId);
    prefs.setString("roleName", user.roleName);
    prefs.setString("dateHuman", user.dateHuman);
    prefs.setString("token", user.token);

    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int userId = prefs.getInt("userId");
    String name = prefs.getString("name");
    String email = prefs.getString("email");
    String phone = prefs.getString("phone");
    String emailVerifiedAt = prefs.getString("emailVerifiedAt");
    int roleId = prefs.getInt("roleId");
    String roleName = prefs.getString("roleName");
    String dateHuman = prefs.getString("dateHuman");
    String token = prefs.getString("token");


    return User(
        userId: userId,
        name: name,
        email: email,
        phone: phone,
        emailVerifiedAt: emailVerifiedAt,
        roleId: roleId,
        roleName: roleName,
        dateHuman: dateHuman,
        token: token);
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("userId");
    prefs.remove("name");
    prefs.remove("email");
    prefs.remove("phone");
    prefs.remove("emailVerifiedAt");
    prefs.remove("roleId");
    prefs.remove("roleName");
    prefs.remove("dateHuman");
    prefs.remove("token");
  }

  Future<String> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token");
    return token;
  }
}