import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigationToHome();
    super.initState();
  }

  _navigationToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xfff29BF12),
                    borderRadius: BorderRadius.circular(6)),
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xfff29BF12),
                    borderRadius: BorderRadius.circular(6)),
                width: 30,
                height: 30,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xfff29BF12),
                    borderRadius: BorderRadius.circular(6)),
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xfff29bf12),
                    borderRadius: BorderRadius.circular(6)),
                width: 30,
                height: 30,
              )
            ],
          ),
          Text(
            'QR Master',
            style: GoogleFonts.poppins(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
