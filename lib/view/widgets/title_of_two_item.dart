import 'package:flutter/material.dart'; 

class TitelOfTwoItem extends StatelessWidget {
  const TitelOfTwoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular NFT's Live Auction",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 23),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "show More",
                style: TextStyle(color: Color(0xff54CEBE)),
              ),
              Icon(
                Icons.more_vert_outlined,
                color: Color(0xff54CEBE),
              )
            ],
          )
        ],
      ),
    );
  }
}
