import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/layout_page.dart';
import 'pages/counter_page.dart';
import 'pages/formulaire_page.dart';
import 'pages/liste_page.dart';
import 'pages/api_page.dart';
import 'pages/firebase_page.dart';

// Note for TP 9: Firebase initialization would go here if configured
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Example of Firebase init (commented out as it requires manual configuration)
  /*
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  */
  
  runApp(const MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Flutter Complet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
      routes: {
        '/layout': (context) => const LayoutPage(),
        '/counter': (context) => const CounterPage(),
        '/form': (context) => const FormulairePage(),
        '/list': (context) => const ListePage(),
        '/api': (context) => const ApiPage(),
        '/firebase': (context) => const FirebasePage(),
      },
    );
  }
}
