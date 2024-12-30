import 'package:flutter/material.dart'; 

class Item extends StatelessWidget {
  const Item({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            text,
            width: 525,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            height: 100,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.4),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('18h : 17m : 29s'),
                    Spacer(),
                    Text('17.53 ETH')
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Text(
                      '    Time Remaining',
                      style: TextStyle(fontSize: 8),
                    ),
                    Spacer(),
                    Text(
                      'Highest:Bid     ',
                      style: TextStyle(fontSize: 8),
                    )
                  ],
               
                ),
                 SizedBox(height: 12,),
                Container(
                  height: 25,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xff32155B).withOpacity(.8),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(
                            255,
                            32,
                            203,
                            186,
                          ),
                          width: 2)),
                  child: Center(
                    child: Text(
                      'Piace A Bid',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
