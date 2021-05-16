import 'package:cooking_app/bottom_bar.dart';
import 'package:flutter/material.dart';

class WelcomeAboard extends StatefulWidget {
  @override
  _WelcomeAboardState createState() => _WelcomeAboardState();
}

class _WelcomeAboardState extends State<WelcomeAboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 816,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/welcome_bg.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    height: 816,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/dark_bg.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                          color: Color(0xffFFFEFE),
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Racipes.',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 8.0,
                              color: Colors.black,
                              offset: Offset(4.0, 4.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottombarBar(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xffE1C427),
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'START COOKING',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                blurRadius: 30.0,
                                color: Colors.black,
                                offset: Offset(4.0, 4.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
