import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';
import 'package:flutter_cosmetics_store/nav_bar.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/basket.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/catalog.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/home.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/profile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavBar(),
    );
  }
}
