// import 'dart:async';
// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

// import 'package:chatbot_app/screens/chatbot.dart';
// import 'package:flutter/material.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     Timer( Duration(seconds: 3),
//         () => MaterialPageRoute(builder: (context) => Chatbot()));
//     //  Timer(
//     //     const Duration(seconds: 3),

//     //     () => Get.to(const DashBoardScreen()));

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//         body: Center(
//       child: Image(image: AssetImage("assetName")),
//     ));
//   }
// }

import 'dart:async';
import 'package:chatbot_app/screens/chatbot.dart';
import 'package:chatbot_app/utils/utils.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Chatbot()),
      );
      Utils().toastSuccessMessage("welcome");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Center(
            child: Image(
              image: AssetImage('assets/images/ai.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
