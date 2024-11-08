import 'package:flutter/widgets.dart';
import 'package:recipewise/app/app.dart';
import 'package:recipewise/home/home.dart';
import 'package:recipewise/home/view/home_page.dart';
import 'package:recipewise/authentication/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    // return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
