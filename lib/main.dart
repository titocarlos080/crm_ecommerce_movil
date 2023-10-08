import 'package:crm_ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (_) => const SplashLogin(),
        '/login': (_) => const Login(),
        '/home': (_) => const HomeScrem(),
      },
    );
  }
}

class SplashLogin extends StatefulWidget {
  const SplashLogin({super.key});

  @override
  State<SplashLogin> createState() => _SplashLoginState();
}

class _SplashLoginState extends State<SplashLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(66, 127, 180, 196),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed('/login');
      },
    );
  }
}
