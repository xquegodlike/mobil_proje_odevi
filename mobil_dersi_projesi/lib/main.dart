import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'file:///E:/flutterapp/mobil_dersi_projesi/lib/app/pages/landing_page.dart';
import 'package:mobil_dersi_projesi/core/userviewmodel/user_view_model.dart';
import 'package:mobil_dersi_projesi/locator.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewModel(),
      child: MaterialApp(
        title: 'Bitirme Projesi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LandingPage(),
      ),
    );
  }
}
