import 'package:flutter/material.dart';

class RecipeVideo extends StatefulWidget {
  @override
  _RecipeVideoState createState() => _RecipeVideoState();
}

class _RecipeVideoState extends State<RecipeVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      'Spiced Bean Tacos',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.favorite_outline)
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
