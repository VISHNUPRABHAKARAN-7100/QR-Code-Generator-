import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_generator/view/add_text_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  AddTextScreen(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('asset/add_title.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Create QR Code',
                    style: GoogleFonts.robotoMono(
                        fontSize: 18, fontWeight: FontWeight.bold, height: 3),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            GestureDetector(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('asset/scan_code.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Scan',
                    style: GoogleFonts.robotoMono(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 3,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
