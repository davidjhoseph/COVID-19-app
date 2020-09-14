import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../helpers/constant.dart';

class InfoTab extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const InfoTab({Key key, this.text, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 156,
        child: Stack(
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 26,
                        color: kShadowColor),
                  ]),
            ),
            Image.asset(image),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width - 170,
                height: 136,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      text,
                      style: TextStyle(fontSize: 12),
                    ),
                    Align(
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              left: 130,
            )
          ],
        ),
      ),
    );
  }
}
