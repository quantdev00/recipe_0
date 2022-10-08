import 'package:flutter/cupertino.dart';

class AppLayout {
  static getCurrentAppSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
