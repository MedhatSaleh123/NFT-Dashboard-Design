import 'package:ecommerce/view/widgets/item.dart';
import 'package:ecommerce/view/widgets/title_of_two_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwoItem extends StatelessWidget {
  const TwoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      color: Color(0xff0B0D21),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitelOfTwoItem(),
         Row(
          children: [
             SizedBox(width: 10,),
             Item(
            text:'images/headers/mask1.png'
          ),
          SizedBox(width: 20,),
           Item(
            text:'images/headers/mask.png'
          ),
          ],
         )
        ],
      ),
    );
  }
}
