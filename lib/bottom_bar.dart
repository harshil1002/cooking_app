import 'package:cooking_app/recipe_video.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BottombarBar extends StatefulWidget {
  @override
  _BottombarBarState createState() => _BottombarBarState();
}

class _BottombarBarState extends State<BottombarBar> {
  int currentIndex = 2;

  List<Widget> currentPage = [
    HomePage(),
    HomePage(),
    RecipeVideo(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage[currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 55,
        color: Colors.white,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => setState(() => currentIndex = 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: currentIndex == 0 ? Colors.blue : Colors.black,
                      size: 25,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentIndex == 0 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 1),
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: currentIndex == 1 ? Colors.blue : Colors.black,
                      size: 25,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: currentIndex == 1 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 2),
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      color: currentIndex == 2 ? Colors.blue : Colors.black,
                      size: 25,
                    ),
                    Text(
                      'Favorites',
                      style: TextStyle(
                        color: currentIndex == 2 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 15,
                      child: Image(
                        image: AssetImage(
                          'assets/images/dp.png',
                        ),
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                        color: currentIndex == 3 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
