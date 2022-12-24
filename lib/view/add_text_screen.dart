import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_generator/controller/provider_controller.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AddTextScreen extends StatelessWidget {
  AddTextScreen({super.key});

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
// Text form field for entering text for making the QR code.
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Provider.of<ProviderController>(context)
                      .textFormfieldController
                      .text
                      .isEmpty
                  ? const SizedBox()
                  : Consumer<ProviderController>(
                      builder: (context, value, child) => QrImage(
                        data: value.textFormfieldController.text,
                        size: 250,
                      ),
                    ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: textController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
// Button for submit the text.
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff7050f0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Provider.of<ProviderController>(context, listen: false)
                            .getQrCode(textController.text);
                      },
                      child: Text(
                        'Get QR code',
                        style: GoogleFonts.sanchez(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
