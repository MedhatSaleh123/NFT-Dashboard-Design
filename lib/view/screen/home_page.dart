import 'package:ecommerce/model/Item_model.dart';
import 'package:ecommerce/model/item_profile.dart';
import 'package:ecommerce/view/widgets/list.dart';
import 'package:ecommerce/view/widgets/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_item.dart';
import '../widgets/header.dart';
import '../widgets/profile.dart';
import '../widgets/top_sellers.dart';
import '../widgets/two_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:    Color(0xff0B0D21),
        body: Row(
      children: [
        Setting(images: AppList.images),
        
        Expanded(
          flex: 3,
          child: Container(
            color: Color(0xff0B0D21),
            child: ListView(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                TwoItem(),
                TopSeller(
                  text: '⭐ Top Seller',
                ),
                TopSellerss(image: AppList.image),
                Slider(
                  divisions: 10,
                  max: 100,
                  min: 0,
                  label: "${_currentSliderValue.toInt()}",
                  activeColor: Colors.teal,
                  value: _currentSliderValue,
                  onChanged: (value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                TopSeller(
                  text: "🔥 Hot Bids",
                ),
                CustomItem(items: AppList.items)
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Profile())
      ],
    ));
  }
}

