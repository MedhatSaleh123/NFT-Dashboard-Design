import 'package:flutter/material.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 9, 52, 87),
            )),
        child: widget);
  }
}