import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/basket.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/catalog.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CatalogScreen(),
    BasketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildNavBar() {
    return Container(
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: MColor.gray_20))),
      child: BottomNavigationBar(
        selectedLabelStyle: MTextStyle.raleway_medium(MColor.black),
        unselectedLabelStyle: MTextStyle.raleway_medium(MColor.gray),
        selectedItemColor: MColor.black,
        unselectedItemColor: MColor.gray,
        //unselectedLabelStyle: MTextStyle.raleway(Colors.red),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: _buildNavBarIcon('assets/bottom_nav_icons/home.png', 0),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: _buildNavBarIcon('assets/bottom_nav_icons/search.png', 1),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: _buildNavBarIcon('assets/bottom_nav_icons/basket.png', 2),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: _buildNavBarIcon('assets/bottom_nav_icons/profile.png', 3),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

  Widget _buildNavBarIcon(String pathToAsset, int index) {
    return Image.asset(
      pathToAsset,
      color: _currentIndex == index ? MColor.black : MColor.gray,
      height: 24,
      width: 24,
    );
  }
}
