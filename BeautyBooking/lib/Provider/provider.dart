import 'package:flutter/material.dart';

import '../models/user_model.dart';


class UserProvider extends ChangeNotifier {
  UserModel _user = UserModel(
    id: '',
    name: '',
    email: '',
    password: '',
   image_url:'',
    city: '',
    token: '',
     password_confirm: '',
     country: '',
     status: '',
     phone: '',
     role: '',


  );

  UserModel get user => _user;

  void setUser(String user) {
    _user = UserModel.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(UserModel user) {
    _user = user;
    notifyListeners();
  }
  
}