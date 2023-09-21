import 'package:flutter/material.dart';
import 'package:nuvei_project_flutter/ui/pages/recarga.dart';
import 'package:nuvei_project_flutter/ui/pages/saldo.dart';
import 'ui/pages/home.dart';
import 'ui/pages/login.dart';
import 'ui/pages/onboarding.dart';
import 'ui/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }

  final Map<String, WidgetBuilder> routes = {
    '/': (context) => const Onboarding(),
    '/login': (context) => const LoginPage(),
    '/register': (context) => const RegisterPage(),
    '/home': (context) => const HomePage(),
    '/saldo': (context) => const SaldoPage(),
    '/recarga': (context) => const RecargaPage(),
  };
}
