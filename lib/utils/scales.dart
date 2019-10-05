import 'package:flutter/cupertino.dart';

double scaleWithHeight(context, value) {
  return MediaQuery.of(context).size.height * 0.001 * value;
}

double scaleWithWidth(context, value) {
  return MediaQuery.of(context).size.width * 0.005 * value;
}
