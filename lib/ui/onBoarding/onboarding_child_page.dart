import 'package:flutter/material.dart';
import 'package:to_do_app/utils/enums/onboarding_page_position.dart';

class OnBoardingChildPage extends StatelessWidget {

  final OnboardingPagePosition onboardingPagePosition;
  final VoidCallback nextOnPress;
  final VoidCallback backOnPress;
  final VoidCallback skipOnPress;

  const OnBoardingChildPage({
    Key? key,
    required this.onboardingPagePosition,
    required this.nextOnPress,
    required this.backOnPress,
    required this.skipOnPress,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSkipButton(),
              _buildOnBoardingImage(),
              _buildOnBoardingController(),
              _buildOnBoardingTitleAndContext(),
              _buildOnBoardingNextAndPreButton(),
            ],
          ),
        ),
      ),
    );
  }

  _buildOnBoardingNextAndPreButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          TextButton(
            onPressed: (){
              backOnPress.call();
            },
            child:   Text(
              onboardingPagePosition == OnboardingPagePosition.page1
               ? "" : "Quay về",
              style: const TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Colors.white,
            ),),
          ),
          const Spacer(),
          TextButton(
            onPressed: (){
              nextOnPress.call();
            },
            child: Text(
              onboardingPagePosition == OnboardingPagePosition.page3
              ? "Bắt đầu" : "Tiếp Theo",
              style: const TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Colors.white,
            ),),
          ),
        ],
      ),
    );
  }

  _buildOnBoardingTitleAndContext() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            onboardingPagePosition.onBoardingPageTitle(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(
            onboardingPagePosition.onBoardingPageContent(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  _buildOnBoardingController() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnboardingPagePosition.page1
                      ? Colors.white.withOpacity(0.7)
                      : Colors.white,
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
              height: 4,
              width: 26,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: onboardingPagePosition == OnboardingPagePosition.page2
                    ? Colors.white.withOpacity(0.7)
                    : Colors.white,
                borderRadius: BorderRadius.circular(56),
              )
          ),
          Container(
              height: 4,
              width: 26,
              decoration: BoxDecoration(
                color: onboardingPagePosition == OnboardingPagePosition.page3
                    ? Colors.white.withOpacity(0.7)
                    : Colors.white,
                borderRadius: BorderRadius.circular(56),
              )
          )
        ],
      ),
    );
  }

  _buildOnBoardingImage() {
    return Image.asset(
      onboardingPagePosition.onBoardingPageImage(),
      height: 250,
      width: 271,
      fit: BoxFit.contain,
    );
  }

  _buildSkipButton() {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: const EdgeInsets.only(top: 14),
      child: TextButton(
        onPressed: (){
          skipOnPress.call();
        },
        child: const Text("SKIP",style: TextStyle(
          fontSize: 16,
          fontFamily: "Lato",
          color: Colors.white,
        ),),
      ),
    );
  }



}




