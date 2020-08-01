import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weaver/data/apis/useridentity_api.dart'; 

class AuthProvider with ChangeNotifier {
  String email;
  String password;

  String authToken;

  bool isAuth() {
    if (authToken != null) {
      print('===> authToken ' + authToken.toString());
      return true;
    }
    return false;
  }


  

  

  Future<void> login(email, password) {
    UserIdentityAPI userIdentityAPI = new UserIdentityAPI();

    return userIdentityAPI
        .existingUser(email, password)
        .then((authentication) async {
      authToken = authentication.data.jwt;

      notifyListeners();

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('authToken', authToken);
    });
  }

  Future<void> signUp(email, password) {
    UserIdentityAPI userIdentityAPI = new UserIdentityAPI();

    return userIdentityAPI.newUser(email, password);
  }

  Future<void> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('authToken')) {
      return false;
    }

    authToken = prefs.getString('authToken');

    notifyListeners();

    return true;
  }

  Future<void> logout() async {
    authToken = null;

    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
