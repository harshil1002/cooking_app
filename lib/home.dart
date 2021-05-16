import 'package:cooking_app/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 40,right: 10),
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Shubhda Sharma',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Image(
                          image: AssetImage(
                            'assets/images/dp.png',
                          ),
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 249,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Center(child: Icon(Icons.settings)),
                              // Image(
                              //   image: AssetImage(
                              //     'assets/images/filter_icon.png',
                              //   ),
                              //   height: 50,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 7, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recently viewed',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'View More',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_3.png',
                            name: 'Mediterrian Salad'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_6.png',
                            name: 'Super Vegge Bowl'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_7.png',
                            name: 'Avacado Salad'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_4.png',
                            name: 'Tometo Pizza'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_1.png',
                            name: 'Spiced Bean Tacos'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_2.png',
                            name: 'mediterrian salad'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_5.png',
                            name: 'Super Vegge Bowl'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_8.png',
                            name: 'Avacado Salad'),
                        CommonWidget.recentlyViewedList(
                            image: 'assets/images/Recently_9.png',
                            name: 'Tometo Pizza'),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 7, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'View More',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_5.png',
                          name: 'Mediterrian Salad',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_9.png',
                          name: 'Super Vegge Bowl',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_3.png',
                          name: 'Avacado Salad',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_4.png',
                          name: 'Tometo Pizza',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_1.png',
                          name: 'Spiced Bean Tacos',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_6.png',
                          name: 'mediterrian salad',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_7.png',
                          name: 'Super Vegge Bowl',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_8.png',
                          name: 'Avacado Salad',
                        ),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_2.png',
                          name: 'Tometo Pizza',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 7, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Recipes',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'View More',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_9.png',
                            name: 'Super Vegge Bowl'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_8.png',
                            name: 'Avacado Salad'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_7.png',
                            name: 'Tometo Pizza'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_6.png',
                            name: 'Spiced Bean Tacos'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_5.png',
                            name: 'mediterrian salad'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_4.png',
                            name: 'Super Vegge Bowl'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_3.png',
                            name: 'Avacado Salad'),
                        CommonWidget.recommendedList(
                            image: 'assets/images/Recently_2.png',
                            name: 'Tometo Pizza'),
                        CommonWidget.recommendedList(
                          image: 'assets/images/Recently_1.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
