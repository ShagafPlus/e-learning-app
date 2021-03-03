import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'file:///F:/FLUTTER21/e-learning-app-main/lib/models/helpers/user/user_login.dart';
import 'package:manahil/models/cores/app_url.dart';
import 'package:manahil/models/cores/user_shared_preferences.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthServiceProvider with ChangeNotifier {

  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;
  ProgressDialog progressDialog;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(String email, String password) async {
    var result;

    final Map<String, dynamic> loginData =  {
        'email': email,
        'password': password
    };


    print('loginData'+loginData.toString());

/* static request
    final Map<String, dynamic> loginData =  {
        'email': "bokarios@gmail.com",
        'password': "somepassword"
    };

*/
    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    Response response = await post(
      AppUrl.login,
      body: json.encode(loginData),
      headers: {'Content-Type': 'application/json'},
    );
    // print('response came');
    print('response code \t'+response.statusCode.toString());
    print('response body \t'+response.body.toString());
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    print('UserPreferences() get old name \t'+prefs.getString('token'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      var userData = responseData['data'];
      User authUser = User.fromJson(userData);
      UserPreferences().saveUser(authUser);
      _loggedInStatus = Status.LoggedIn;
      notifyListeners();
      result = {'status': true, 'message': 'Successful', 'user': authUser};
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)['error']
      };
    }
    return result;
  }

  Future<Map<String, dynamic>> register(String name, String email, String phone, String password) async {

    final Map<String, dynamic> registrationData = {
        'email': email,
        'mobile_number': phone,
        'name': name,
        'role_id': 2,
        'password': password
    };

/*
 static data
    final Map<String, dynamic> registrationData = {
        'email': 'osama@o.com',
        'mobile_number': '249123456456',
        'name': 'Osama Sayed',
        'role_id': 2,
        'password': '1@password'
    };
*/

    print('request data \t '+json.encode(registrationData).toString());
    return await post(AppUrl.register,
        body: json.encode(registrationData),
        headers: {'Content-Type': 'application/json'})
        .then(onValue)
        .catchError(onError);
  }

  static Future<FutureOr> onValue(Response response) async {
    print('response \n');
    print(response.body);
    print('response.responseData \n');

    var result;
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData.toString());
    if (response.statusCode == 200) {
      var userData = responseData['data'];
      User authUser = User.fromJson(userData);
      print('token\n'+authUser.token);
      UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {
//      if (response.statusCode == 401) Get.toNamed("/login");
      result = {
        'status': false,
        'message': 'Registration failed',
        'data': responseData
      };
    }
    print('result\n '+result.toString());
    return result;
  }

  static onError(error) {
    print("the error is $error.detail");
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }

}
