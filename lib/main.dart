import 'package:aisinproject/page/mainpage.dart';
import 'package:aisinproject/page/splashscreenpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GeoMapApp());
}

class GeoMapApp extends StatefulWidget {
  const GeoMapApp({Key? key}) : super(key: key);

  @override
  State<GeoMapApp> createState() => _GeoMapAppState();
}

class _GeoMapAppState extends State<GeoMapApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => SplashScreenPage(),
      '/main': (context) => MainPage()
    });
  }
}
