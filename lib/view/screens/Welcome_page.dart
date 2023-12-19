import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation/routes/routes.dart';
import 'package:graduation/utils/theme.dart';
import 'package:graduation/view/widgets/ElevatedUtils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [mainColor, mainColor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/img/Heaven.png",
                  color: bottomColor,
                ),
                const SizedBox(
                  height: 120,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset("assets/img/home.png"),
                    Positioned(
                      bottom: 50,
                      child: Container(
                          child: ElevatedButtonUtils(
                        text: "Let's Go",
                        BackGroundColor: bottomColor,
                        width: 100,
                        height: 16,
                        onpressed: () {
                          Get.offNamed(Routes.LoginScreen);
                        },
                      )),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
