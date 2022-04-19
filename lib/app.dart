import 'package:flutter/material.dart';
// My screen states
import 'package:blood_bowl_app/screens/home_screen.dart';
import 'package:blood_bowl_app/screens/skill_screen.dart';

class App extends StatefulWidget {
  
  const App({Key? key}) : super(key: key);

  static final routes = {
    '/': (context) => const CircularProgressIndicator(),
    'home_screen': (context) => const HomeScreen(),
    'skill_screen': (context) => const SkillScreen(),
    // 'detail_screen': (context) => const DetailScreen(),
    // 'list_screen': (context) => const ListScreen(),
    // 'new_post': (context) => const NewEntryScreen()
    // HOME SCREEN
    // SKILLS SCREEN
    // SCORE COUNTER/NEW GAME
    // ERRATA SCREEN
  };

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BloodBowl',
      // theme: (CUSTOM THEME HERE)
      routes: App.routes,
      initialRoute: 'home_screen'
    );
  }
}