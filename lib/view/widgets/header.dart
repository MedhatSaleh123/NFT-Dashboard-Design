import 'package:ecommerce/view/widgets/item_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color(0xff0B0D21),
      child: Row(
        children: [
          ItemHeader(
            widget: Row(
              children: [
                SvgPicture.asset(
                  'images/headers/search.svg',
                  fit: BoxFit.cover,
                  width: 17,
                  height: 17,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Search by creator or collection'),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
          ItemHeader(widget: Text('3.25 ETH')),
          // ItemHeader(widget: Icon(Icons.notification_add_outlined)),
          ItemHeader(widget: SvgPicture.asset('images/headers/notification.svg')),
          ItemHeader(widget: Text('create')),
         
           Container(
      margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 43, 215, 204),
            )),
        child: Text('connect wallet')),
          Container(
            height: 30,
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Container(
            width: 300,
            child: Row(
              children: [
                Container(
                  width: 300,
                  child: ListTile(
                    leading:CircleAvatar(
                      radius: 20,
                    child: Image.asset("images/profile/2.png",),
                    ),
                    title: Text(
                      'Musfiqur Rahman',
                      style: TextStyle(fontSize: 13),
                    ),
                    subtitle: Text(
                      'ryzenplxe@gmail.com',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
