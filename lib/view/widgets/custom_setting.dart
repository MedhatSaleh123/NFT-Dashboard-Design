import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 

class CustomSetting extends StatelessWidget {
  const CustomSetting({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      text,
     
      fit: BoxFit.fill,
    );
  }
}