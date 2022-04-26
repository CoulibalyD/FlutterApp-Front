import 'package:app/component/splash/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Bienvenue',
        body:
            'Cette application suivra vos modes de transport que vous utlisez quotidiennement',
        // footer: SizedBox(
        //   height: 45,
        //   width: 300,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         primary: Colors.green,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20)),
        //         elevation: 8),
        //     onPressed: () {},
        //     child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
        //   ),
        // ),
        image: Center(
          child: SizedBox(
              height: 700, width: 700, child: Lottie.asset('assets/sing.json')),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Suivie',
        body:
            'Suivre vos deplacement dans la journée pour vous fournir de meilleur itinéraire',
        image: Center(
            child: SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset('assets/map.json'))),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Commencez',
        body: 'Tout est bien configurer amusez-vous bien',
        image: Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset('assets/pointer.json')),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(7, 7),
            color: Colors.black38,
            activeSize: Size.square(12),
            activeColor: Colors.purple,
          ),
          showDoneButton: true,
          done: const Text(
            'Prêt',
            style: TextStyle(fontSize: 20, color: Colors.purple),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: Colors.purple),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.purple,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SplashScreen()));
  }
}
