import 'package:ecommerce/view/widgets/folloers_profile.dart';
import 'package:ecommerce/view/widgets/list.dart';
import 'package:ecommerce/view/widgets/profile.dart';
import 'package:flutter/material.dart'; 
class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, 
      child: ListView.builder(
        itemCount: 4, 
        scrollDirection: Axis.horizontal,
        itemBuilder: 
      (context, index) {
        return   FollowersProfile(
          item: AppList.itemsProfile[index],
        );
      },),
    );
  }
}
