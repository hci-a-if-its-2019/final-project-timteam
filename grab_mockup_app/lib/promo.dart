import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_mockup_app/GrabColor.dart';

class PromoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset(
      'assets/promo.jpg',
      fit: BoxFit.fill,
    );
  }
}