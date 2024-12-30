import 'package:ecommerce/model/item_profile.dart';
import 'package:ecommerce/view/widgets/list.dart';
import 'package:flutter/material.dart';

class TopSellerss extends StatelessWidget {
  const TopSellerss({
    super.key,
    required this.image,
  });

  final List image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Sellers(
            image: image[index],
           item: AppList.itemss[index],
          );
        },
      ),
    );
  }
}

class Sellers extends StatelessWidget {
  const Sellers({
    super.key,
    required this.image, required this.item,
    
  });
  final String image;
final ItemProfile item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 50,
            height: 70,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    size: 15,
                    Icons.check_circle,
                    color: const Color.fromARGB(255, 244, 29, 158),
                  )
                ],
              ),
              Text(
                '\$${item.number}',
                style: TextStyle(
                    fontSize: 9,
                    color: const Color.fromARGB(255, 27, 224, 224)),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TopSeller extends StatelessWidget {
  const TopSeller({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          // Image.asset(
          //   'images/items/image.png',
          //   width: 20,
          //   height: 20,
          // ),
          SizedBox(
            width: 5,
          ),
          Text(
           text,
            style: TextStyle(
                color: Color.fromARGB(255, 57, 190, 172),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
