import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/ui/onBoarding/onboarding_child_page.dart';
import 'package:to_do_app/ui/welcome/welcome_page.dart';
import 'package:to_do_app/utils/enums/onboarding_page_position.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children:  [
          // truyền widget con
          OnBoardingChildPage(
              onboardingPagePosition: OnboardingPagePosition.page1,
              nextOnPress: () { _pageController.jumpToPage(1); },
              backOnPress: (){},
              skipOnPress: (){
                _markOnboardingCompleted();
                _goToWelcomePage;
              },
          ),
          OnBoardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page2,
            nextOnPress: () { _pageController.jumpToPage(2); },
            backOnPress: (){_pageController.jumpToPage(0);},
            skipOnPress: (){
              _markOnboardingCompleted();
              _goToWelcomePage;
            },
          ),
          OnBoardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page3,
            nextOnPress: () {
              _markOnboardingCompleted();
              _pageController.jumpToPage(1); },
            backOnPress: (){_pageController.jumpToPage(1);},
            skipOnPress: (){
              _markOnboardingCompleted();
              _goToWelcomePage;
            },
          )
        ],
      ),
    );

  }

  void _goToWelcomePage(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage(isFirstTimeInstallApp: true,)));
  }

  Future<void> _markOnboardingCompleted() async{
    try{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool("kOnboardingCompleted",true);
    }
    catch(e){
      return ;
    }
  }

}
