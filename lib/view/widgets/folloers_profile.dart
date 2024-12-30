import 'package:flutter/material.dart';

import '../../model/item_profile.dart'; 
class FollowersProfile extends StatelessWidget {
  const FollowersProfile({
    super.key, required this.item,
  });
final ItemProfile item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10), 
      child:Column(
        children: [
    Container(
      height: 40, 
      width: 60, 
     
      decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(12), 
      border: Border.all(width: 1.5,color: const Color.fromARGB(255, 23, 66, 209))
      ),
      child: Center(child: Text(item.number)),
    )
    ,
    SizedBox(height: 10,),
    Text(item.name,style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
