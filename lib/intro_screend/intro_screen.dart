import 'package:flutter/material.dart';
import 'package:homehub/account_hub/account.dart';

import 'package:introduction_screen/introduction_screen.dart';

class IntroScreenPage extends StatefulWidget {
  const IntroScreenPage({super.key});

  @override
  State<IntroScreenPage> createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  // Future<void> checkforupdate() async {
  //   print("check for update");
  //   InAppUpdate.checkForUpdate().then((info) async {
  //     setState(() async {
  //       if (info.updateAvailability == UpdateAvailability.updateAvailable) {
  //         print("update availble");
  //         await InAppUpdate.startFlexibleUpdate();
  //         InAppUpdate.completeFlexibleUpdate().then((_) {}).catchError((e) {
  //           print(e.toString());
  //         });
  //       }
  //     });
  //   }).catchError((e) {
  //     print(e.toString());
  //   });
  // }

  @override
  void initState() {
    // checkforupdate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    TextStyle bodyStyle = TextStyle(
        fontSize: h * .02,
        color: Colors.white,
        letterSpacing: 1.0,
        fontWeight: FontWeight.bold);

    PageDecoration pageDecoration = PageDecoration(
      fullScreen: true,
      titleTextStyle: TextStyle(
          fontSize: h * .03, color: Colors.white, fontWeight: FontWeight.bold),
      bodyTextStyle: bodyStyle,
      //  bodyPadding: EdgeInsets.only(right: 25),
      //  titlePadding: EdgeInsets.only(top: 200, right: 230),
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: IntroductionScreen(
        freeze: true,
        //  key: introKey,
        globalBackgroundColor: Colors.transparent,

        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        bodyPadding: EdgeInsets.zero,
        // globalHeader: Align(
        //   alignment: Alignment.topRight,
        //   child: SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 16, right: 16),
        //       //   child: _buildImage('flutter.png', 100),
        //     ),
        //   ),
        // ),
        // globalFooter: SizedBox(
        //   width: double.infinity,
        //   height: 60,
        //   child: ElevatedButton(
        //       child: const Text(
        //         'Let\'s go right away!',
        //         style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        //       ),
        //       onPressed: () {}),
        // ),
        pages: [
          PageViewModel(
              title: "Conveniece",
              body:
                  """Control your home device using a single app from anywhere in the world.""",
              //  image: _buildImage('img1.jpg'),
              decoration: pageDecoration,
              image: Image.network(
                'https://images.pexels.com/photos/6758772/pexels-photo-6758772.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              )),
          PageViewModel(
              title: "Stay Informed",
              body:
                  """Instant notification of you about any activity or alearts.""",
              //  image: _buildImage('img1.jpg'),
              decoration: pageDecoration,
              image: Image.network(
                'https://images.pexels.com/photos/3937174/pexels-photo-3937174.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              )),
          PageViewModel(
              title: "Automate",
              body:
                  """Switch through different screns and quick action for last management of your home.""",
              //  image: _buildImage('img1.jpg'),
              decoration: pageDecoration,
              image: Image.network(
                'https://images.pexels.com/photos/6186812/pexels-photo-6186812.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              )),
        ],
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Account()));
        },
        onSkip: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Account()));
        }, // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: Text('Skip',
            style: TextStyle(
                fontSize: h * .03,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        next: Container(
          height: h * .05,
          width: w * .2 / 1.5,
          decoration: BoxDecoration(
              color: Colors.blue.withGreen(2), shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
        done: Text('Done',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: h * .03,
                color: Colors.white)),
        curve: Curves.fastLinearToSlowEaseIn,
        //  controlsMargin: const EdgeInsets.all(16),
        // controlsPadding: kIsWeb
        //     ? const EdgeInsets.all(12.0)
        //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
