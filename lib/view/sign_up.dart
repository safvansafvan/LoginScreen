import 'package:flutter/material.dart';
import 'package:loginscreen/view/widget/banner_img_widget.dart';
import 'package:loginscreen/view/widget/button_widget.dart';
import 'package:loginscreen/view/widget/continue_options.dart';
import 'package:loginscreen/view/widget/heading.dart';
import 'package:loginscreen/view/widget/textformfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  const HeadingWidget(title: 'Sign Up'),
                  const TextFormFieldWidget(
                    hint: 'Full Name',
                    type: TextInputType.name,
                    prefixicon: Icons.person,
                  ),
                  const TextFormFieldWidget(
                    hint: 'Email',
                    type: TextInputType.emailAddress,
                    prefixicon: Icons.email,
                  ),
                  const TextFormFieldWidget(
                    hint: 'Password',
                    type: TextInputType.emailAddress,
                    prefixicon: Icons.lock,
                    isObs: true,
                  ),
                  const TextFormFieldWidget(
                    hint: 'Mobile Number',
                    type: TextInputType.number,
                    prefixicon: Icons.numbers,
                  ),
                  const SizedBox(height: 5),
                  const ButtonWidget(isSignIn: false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account ?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign In',
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
                    padding: EdgeInsets.only(top: 10.0, bottom: 5),
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
