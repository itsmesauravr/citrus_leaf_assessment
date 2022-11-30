import 'package:citrus_leaf_assessment/app/api/view_model/api_view_model.dart';
import 'package:citrus_leaf_assessment/app/login/view/login_screen.dart';
import 'package:citrus_leaf_assessment/app/login/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ApiViewModel(),
        ),
      ],
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
