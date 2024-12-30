import 'package:ecommerce/view/widgets/custom_setting.dart';
import 'package:flutter/material.dart'; 
class Setting extends StatelessWidget {
  const Setting({
    super.key,
    required this.images,
  });

  final List images;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
     width: 30,
     decoration: BoxDecoration(
      color: Color(0xff0B0D21),
      borderRadius: BorderRadius.circular(7), 
      border: Border.all(color: const Color.fromARGB(255, 63, 140, 185),width: 1)
     ),
      child: ListView.builder(
       physics: NeverScrollableScrollPhysics(),
       itemCount: images.length,
       itemBuilder: (context, index) {
        return 
      index==7?SizedBox(height: 350,):
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomSetting(text: images[index]),
        );
      },),
    );
  }
}