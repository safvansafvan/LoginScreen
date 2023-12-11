import 'package:flutter/material.dart';
import 'package:loginscreen/view/sign_up.dart';
import 'package:loginscreen/view/widget/banner_img_widget.dart';
import 'package:loginscreen/view/widget/button_widget.dart';
import 'package:loginscreen/view/widget/continue_options.dart';
import 'package:loginscreen/view/widget/heading.dart';
import 'package:loginscreen/view/widget/textformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const BannerImageWidget(),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  const HeadingWidget(title: 'Sign in now'),
                  const TextFormFieldWidget(
                    hint: 'Email',
                    type: TextInputType.emailAddress,
                    prefixicon: Icons.email,
                  ),
                  const TextFormFieldWidget(
                    hint: 'Password',
                    type: TextInputType.text,
                    prefixicon: Icons.lock,
                    isObs: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.pink),
                          )),
                    ),
                  ),
                  const ButtonWidget(isSignIn: true),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account ?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Or connect',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContinueWithOption(path: 'assets/facebook.png'),
                        ContinueWithOption(path: 'assets/google.png'),
                        ContinueWithOption(path: 'assets/twiter.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
