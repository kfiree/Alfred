import 'package:flutter/material.dart';

import 'screens/profile/profile_screen.dart';
import 'screens/home/home_screen.dart';


void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alfred",
          initialRoute: HomeScreen.idScreen,
          routes: {
            HomeScreen.idScreen: (context) => const HomeScreen(),
            ProfileScreen.idScreen: (context) => const ProfileScreen(),
          },
          debugShowCheckedModeBanner: false,
    );
  }
}
//sdk.dir=C:\\Users\\kfire\\AppData\\Local\\Android\\sdk
// flutter.sdk=C:\\Users\\kfire\\Development\\sdks\\flutter
//
// flutter.buildMode=debug
//
// flutter.versionCode=1
// flutter.versionName=1.0.0
// flutter.minSdkVersion = 19
// flutter.targetSdkVersion = 33
// flutter.compileSdkVersion = 33