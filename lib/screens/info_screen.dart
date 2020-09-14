import 'package:flutter/material.dart';
import '../helpers/constant.dart';
import '../widgets/myheader.dart';
import '../widgets/symptoms_card.dart';
import '../widgets/info_tab.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'About Covid-19',
              isLandingPage: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SymptomsCard(
                        image: 'assets/images/caugh.png',
                        title: 'Cough',
                      ),
                      SymptomsCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Prevention",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  InfoTab(
                    image: 'assets/images/wear_mask.png',
                    title: "Wear face mask",
                    text:
                        'Since the start of the corona virus outbreak, some places have fully embraced earing facemasks',
                  ),
                  InfoTab(
                    image: 'assets/images/wear_mask.png',
                    title: "Wear face mask",
                    text:
                        'Since the start of the corona virus outbreak, some places have fully embraced earing facemasks',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
