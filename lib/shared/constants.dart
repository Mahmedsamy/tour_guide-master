import 'package:flutter/material.dart';
import 'package:tour_guide/network/local/cache_helper.dart';
import 'package:tour_guide/shared/components.dart';

import '../layout/auth/login/login_layout.dart';

const defaultColor = Colors.deepOrange;

void signOut(
    context,
    ) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigateAndFinish(context, LoginScreen(title: '',));
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element) =>
      print(element.group(0))
  );
}

dynamic token='';
String uId='';