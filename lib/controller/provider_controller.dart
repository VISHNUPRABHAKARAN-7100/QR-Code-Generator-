import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  var textFormfieldController = TextEditingController();

  void getQrCode(String data) {
    textFormfieldController.text = data;
    notifyListeners();
  }
}
