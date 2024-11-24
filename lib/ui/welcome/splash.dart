
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/ui/onBoarding/onboarding_page_view.dart';
import 'package:to_do_app/ui/welcome/welcome_page.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  Future<void> _checkAppState(BuildContext context) async {
    final isCompleted = await _isOnboardingCompleted();
    if (isCompleted) {
      if ( !context.mounted ) return;
      else{
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomePage(isFirstTimeInstallApp: false,),
          ),
        );
      }
    }
    else{
      if ( !context.mounted ) return;
      else{
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingPageView(),
          ),
        );
      }
    }
  }


  Future<bool> _isOnboardingCompleted() async{
    try{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final result = prefs.getBool("kOnboardingCompleted");
      return result ?? false;
    }
    catch(e){
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    _checkAppState(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/splash_icon.png",
                width: 105,
                height: 90,
                fit: BoxFit.contain,)
              ],
            ),
          )
      ),
    );
  }

}