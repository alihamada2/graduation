import 'package:flutter/material.dart';
import 'package:graduation/utils/theme.dart';
import 'package:graduation/view/widgets/ElevatedUtils.dart';
import 'package:graduation/view/widgets/TextFieldUtils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [mainColor, mainColor2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  "assets/img/Heaven.png",
                  color: bottomColor,
                ),
              ),
              const Positioned(
                top: 180,
                width: 267,
                child: Text(
                  "Welcome back! Sign in using your social account or email to continue us,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      letterSpacing: 0.4,
                      color: Color(0xff797c7b)),
                ),
              ),
              Positioned(
                  top: 270,
                  child: SizedBox(
                      width: 329,
                      child: TextFieldUtils(
                        Controller: emailController,
                        text: "Your email",
                        obscureText: false,
                        textColor: const Color(0xff24786d),
                        suffixIcon: const Text(""),
                        fontSize: 14,
                        FontFamily: "fontt",
                      ))),
              Positioned(
                  top: 340,
                  child: SizedBox(
                      width: 329,
                      child: TextFieldUtils(
                        Controller: emailController,
                        text: "Password",
                        obscureText: true,
                        textColor: const Color(0xff24786d),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility,
                              size: 23,
                              color: Color(0xff24786d),
                            )),
                        fontSize: 14,
                        FontFamily: "fontt",
                      ))),
              Positioned(
                  top: 450,
                  child: ElevatedButtonUtils(
                      onpressed: () {},
                      text: "Log in",
                      BackGroundColor: bottomColor,
                      height: 15,
                      width: 150)),
              Positioned(
                  top: 520,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Color(0xff24786d),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ))),
              const Positioned(
                  top: 570,
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: Color(0xff797c7b),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  )),
                  const Positioned(
                    bottom: 155,
                    child: Text("log in with",style: TextStyle(
                      color: Color(0xff24786d),
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                  ),)),
                  Positioned(
                    bottom: 110,
                    child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: Center(child: Image.asset("assets/img/facebook.png"))),
                                const SizedBox(width: 8,),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: Center(child: Image.asset("assets/img/google.png"))),
                      
                                                

                      ],
                    ),

                  )),

                  Positioned(
                    bottom: 30,
                    child: ElevatedButtonUtils(onpressed: (){}, text: "Sign Up", BackGroundColor: bottomColor, height: 15, width: 150))
            ],
          ),
        ),
      ),
    );
  }
}
