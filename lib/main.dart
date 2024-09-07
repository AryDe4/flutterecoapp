import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_pj/cart_page.dart';
import 'package:login_pj/landingpage.dart';
import 'package:login_pj/login_page.dart';
import 'package:login_pj/models/shop.dart';
import 'package:login_pj/shoppage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDS9cyn1gX4ckubLsMqZO7PVk0QifaQNLQ",
          authDomain: "loginpj-d7e93.firebaseapp.com",
          projectId: "loginpj-d7e93",
          storageBucket: "loginpj-d7e93.appspot.com",
          messagingSenderId: "1032949345037",
          appId: "1:1032949345037:web:c57bb388d9f72830855e44"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Landingpage(),
      routes: {
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
        '/landing_page': (context) => const Landingpage(),
      },
    );
  }
}
