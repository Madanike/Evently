import 'package:evently_project/feature/auth/login/login.dart';
import 'package:evently_project/feature/auth/register/register.dart';
import 'package:evently_project/feature/create_event/create_event.dart';
import 'package:evently_project/feature/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class RouteManager {
  static const String register = '/register';
  static const String login = '/login';
  static const String mainLayout = '/mainLayout';
  static const String createEvent = '/createEvent';

    static Route? router (RouteSettings settings){
      switch (settings.name){
        case register:{
          return CupertinoPageRoute(builder: (context)=> Register());
        }
        case login:{
          return CupertinoPageRoute(builder: (context)=> Login());
        }
        case mainLayout:{
          return CupertinoPageRoute(builder: (context) => MainLayout());
        }
        case createEvent:{
          return CupertinoPageRoute(builder: (context) => CreateEvent());
        }
      }
    }
}