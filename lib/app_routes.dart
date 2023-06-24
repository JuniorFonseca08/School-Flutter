import 'package:flutter/material.dart';
import 'package:flutter_test1/pages/detalhe/detalhe_page.dart';
import 'package:flutter_test1/pages/home/home_page.dart';

class AppRoutes {
  static String initialRoute = '/';
  static String detalhe = '/detalheItem';

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      initialRoute: (contex) => const HomePage(),
      detalhe: (contex) => const DetalhePage(),
    };
  }
}
