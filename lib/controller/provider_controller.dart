import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  final textFormfieldController = TextEditingController();

// Function for make the QR code
  void getQrCode(String data) {
    textFormfieldController.text = data;
    notifyListeners();
  }
}
