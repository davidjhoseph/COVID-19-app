import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../helpers/constant.dart';
import '../helpers/myclipper.dart';
import '../screens/home_screen.dart';
import '../screens/info_screen.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final bool isLandingPage;
  MyHeader(
      {this.image, this.textTop, this.textBottom, this.isLandingPage = false});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: isLandingPage
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.end,
              children: [
                if (isLandingPage)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => HomeScreen(),
                        ),
                      );
                    },
                    child: Align(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                if (!isLandingPage)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => InfoScreen(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: Align(
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                      alignment: Alignment.topRight,
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  SvgPicture.asset(
                    image,
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      "$textTop \n$textBottom",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
