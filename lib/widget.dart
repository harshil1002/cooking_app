import 'package:flutter/material.dart';

class CommonWidget {
  static Widget recentlyViewedList({
    String image,
    String name,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('$image'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$name',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  static Widget recommendedList({String image, String name, }) {
    return Padding(
      padding: const EdgeInsets.only(right: 13, bottom: 10),
      child: Container(
        height: 240,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage('$image'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$name',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
