import 'package:evently_project/feature/auth/login/login.dart';
import 'package:evently_project/feature/auth/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class RouteManager {
  static const String register = '/register';
  static const String login = '/login';

    static Route? router (RouteSettings settings){
      switch (settings.name){
        case register:{
          return CupertinoPageRoute(builder: (context)=> Register());
        }
        case login:{
          return CupertinoPageRoute(builder: (context)=> Login());
        }
      }
    }
}