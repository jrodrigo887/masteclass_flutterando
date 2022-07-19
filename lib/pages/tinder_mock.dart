import 'package:exercicio1_masteclass/components/button_custom.dart';
import 'package:flutter/material.dart';

import '../theme_helper/theme_helper.dart';

class TinderMock extends StatelessWidget {
  const TinderMock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [ThemeHelper.orangeAccent, ThemeHelper.pink],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo_tinder.png', width: 164.0),
              const SizedBox(height: 150.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: RichText(
                    textDirection: TextDirection.ltr,
                    text: const TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to ours ',
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                              text: '. Learn how we process yout datain our '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Cookies Policy.',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ])),
              ),
              const SizedBox(height: 40.0),
              ButtomCustom(
                onTap: () {},
                title: 'SIGN IN WITH APPLE',
                image: 'images/logo_apple.png',
              ),
              const SizedBox(height: 16.0),
              ButtomCustom(
                onTap: () {},
                title: 'SIGN IN WITH FACEBOOK',
                image: 'images/logo_facebook.png',
              ),
              const SizedBox(height: 16.0),
              ButtomCustom(
                onTap: () {},
                title: 'SIGN IN WITH PHONE NUMBER',
                image: 'images/bubble.png',
              ),
              const SizedBox(height: 26.0),
              const Text(
                'Trouble Signing In?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
