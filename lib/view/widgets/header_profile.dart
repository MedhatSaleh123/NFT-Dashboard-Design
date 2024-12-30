import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Stack(
        children: [
          Image.asset(fit: BoxFit.cover, width: 360, "images/profile/1.png"),
          Positioned(
            top: 30,
            right: 125,
            child: Text(
              'My Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 175,
            right: 95,
            child: Text(
              'Musfiqur Rahman',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 80,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 23, 137, 209))),
              child: Image.asset(
                  fit: BoxFit.cover, width: 70, "images/profile/2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
