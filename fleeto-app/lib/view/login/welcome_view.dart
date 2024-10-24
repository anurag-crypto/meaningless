import 'package:flutter/material.dart';
import 'package:fleeto/view/login/login_view.dart';
import 'package:fleeto/view/login/sing_up_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, // Take the full height of the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/img/app_logo.png",
                    width: media.width * 0.65,
                    height: media.width * 0.65,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Text(
                "With Fleeto, you will get a \nverified driver and vehicle\nright at your doorstep.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  title: "Create an Account",
                  type: RoundButtonType.textPrimary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Stack(
      //         alignment: Alignment.bottomCenter,
      //         children: [
      //           // Image.asset(
      //           //   "assets/img/welcome_top_shape.png",
      //           //   width: media.width,
      //           // ),
      //           Image.asset(
      //             "assets/img/app_logo.png",
      //             width: media.width *0.65 ,
      //             height: media.width *0.65,
      //             fit: BoxFit.contain,
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         height: media.width * 0.01,
      //       ),
      //       Text(
      //         "With Fleeto, you will get a \nverified driver and vehicle\nright at your doorstep.",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //             color: TColor.secondaryText,
      //             fontSize: 13,
      //             fontWeight: FontWeight.w500),
      //       ),
      //       SizedBox(
      //         height: media.width * 0.1,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 25),
      //         child: RoundButton(
      //           title: "Login",
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const LoginView(),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 25),
      //         child: RoundButton(
      //           title: "Create an Account",
      //           type: RoundButtonType.textPrimary,
      //           onPressed: () {
      //              Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const SignUpView(),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
