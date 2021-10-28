import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/delay_effect.dart';
import '../widgets/custom_headline.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () async {
      Get.offNamed("/Home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DelayedDisplay(
                      delay: Duration(milliseconds: 100),
                      child: CustomHeadline(
                        text: "Temam",
                        myFW: FontWeight.bold,
                        fSize: 1.6,
                        myColor: Colors.black,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DelayedDisplay(
                      delay: Duration(milliseconds: 600),
                      child: CustomHeadline(
                        text: "Kolay ",
                        myColor: Colors.black,
                      )),
                  DelayedDisplay(
                      delay: Duration(milliseconds: 800),
                      child: CustomHeadline(
                        text: "uygulama",
                        myFW: FontWeight.bold,
                        myColor: Colors.black,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DelayedDisplay(
                      delay: Duration(milliseconds: 1000),
                      child: CustomHeadline(
                        text: "geliştirici",
                        myColor: Colors.black,
                      )),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
