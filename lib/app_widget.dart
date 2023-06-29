import 'package:flutter/material.dart';
import 'package:flutter_test1/app_routes.dart';
import 'package:flutter_test1/providers/config_provider.dart';
import 'package:flutter_test1/styles/theme_style.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfigProvider storeConfig;

  @override
  Widget build(BuildContext context) {
    storeConfig = Provider.of<ConfigProvider>(context);
    return MaterialApp(
      title: 'School',
      routes: AppRoutes.routes(),
      themeMode: storeConfig.tema,
      theme: MyThemest.claro,
      darkTheme: MyThemest.escuro,
    );
  }
}
