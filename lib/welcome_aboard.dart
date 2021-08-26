import 'dart:io';

import 'package:cooking_app/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';

class WelcomeAboard extends StatefulWidget {
  @override
  _WelcomeAboardState createState() => _WelcomeAboardState();
}

class _WelcomeAboardState extends State<WelcomeAboard> {
  static const _adUnitID = "ca-app-pub-3940256099942544/8135179316";

  final _nativeAdController = NativeAdmobController();

  @override
  void initState() {
    super.initState();
    Admob.requestTrackingAuthorization();
  }

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
                        'Welcome to.',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 25,
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
              SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        color: Colors.white,
                        child: NativeAdmob(
                          adUnitID: 'ca-app-pub-3940256099942544/8135179316',
                          numberAds: 3,
                          controller: _nativeAdController,
                          type: NativeAdmobType.full,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: AdmobBanner(
                          adUnitId: getBannerAdUnitId(),
                          adSize: AdmobBannerSize.BANNER,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
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
        ],
      ),
    );
  }

  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }
}
