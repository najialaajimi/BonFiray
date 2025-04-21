import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'CreerCompte.dart';
import 'Home.dart';
import 'package:flutter/services.dart';
import 'SplashScreen.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFEDEDED)),
      home: SplashScreen(),
      //  test(),
    );
  }
}
