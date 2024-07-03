import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/homescreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid ? await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCftK9-g5hCS-xpnW9P_sF1sHx1vlqjos0',
       appId: '1:968987074787:android:cf9ff7a203715618f0a5d6',
        messagingSenderId: '968987074787',
         projectId: 'register-login-dummy1-8e132')
  ):
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
