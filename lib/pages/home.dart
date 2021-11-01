import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_data.dart';
import 'package:myapp/widgets/custom_headline.dart';
import 'package:myapp/widgets/horizontal_slide_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color4,
      body: bodyGetir(),
    );
  }

  bodyGetir() {
    return Column(
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        baslikSatirGetir(),
        SizedBox(
          height: height * 0.005,
        ),
        slideGetir(),
        SizedBox(
          height: height * 0.020,
        ),
      ],
    );
  }

  Expanded slideGetir() {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          HorizontalSlideItem(
            image: "assets/images/coffee03.jpg",
            name: "Latte",
          ),
          HorizontalSlideItem(
            image: "assets/images/coffee02.jpg",
            name: "Cappucino",
          ),
          HorizontalSlideItem(
            image: "assets/images/coffee01.jpg",
            name: "Americano",
          ),
        ],
      ),
    );
  }

  Padding baslikSatirGetir() {
    return Padding(
      padding: mainPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomHeadline(
            text: "Ürünler",
            myColor: color1,
            fSize: 1.2,
            myFW: FontWeight.bold,
          ),
          CustomHeadline(text: "Sepet", fSize: 0.8, myColor: color1),
        ],
      ),
    );
  }
}
