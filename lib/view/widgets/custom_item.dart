import 'package:flutter/material.dart';

import '../../model/Item_model.dart'; 
class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.items,
  });

  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(height:320 , 
    child: ListView.builder(
     itemCount: items.length,
     scrollDirection: Axis.horizontal, 
     physics: NeverScrollableScrollPhysics(),
     itemBuilder: (context, index) {
      return  Itemss(item:items[index])
    ;
    },),
    );
  }
}

class Itemss extends StatelessWidget {
  const Itemss({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
     height: 550, 
     width: 200, 
     child: Column(
       
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
    Row(
      children: [
        Container(
          height: 40, 
          width: 100,
          decoration: BoxDecoration(
              color: Color(0xff161A42),
           borderRadius: BorderRadius.only(
            topRight: Radius.elliptical(100, 90)
           )
          ), 
        
          child: Center(child: Text(item.time))), 
        Spacer(), 
        Row(
          children: [
            Text(item.number),
            SizedBox(width: 3,),
            Icon(Icons.favorite,
            size: 28,
            color: Color(0xffB82AF6),)
          ],
        )
      ],
    )
    , ClipRRect( 
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(item.image, 
      width: 200, 
      height: 200, 
      fit: BoxFit.cover,
      ),
    ),  
    FittedBox(
      child: Text(item.name,style: TextStyle(
       fontSize: 15
      )),
    ) 
    ,Row(children: [
     Text('0.045 ETH',style: TextStyle(
       color: const Color.fromARGB(255, 48, 250, 226)
     ),), 
   SizedBox(width: 70,),
     Image.asset(item.image2, 
  //   fit: BoxFit.fi,
     width: 50, 
     height: 20,
     )
    ],)
       ],
     ),
                  );
  }
}
