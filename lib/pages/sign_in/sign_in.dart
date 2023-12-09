
import 'package:edy_learner/pages/sign_in/widgets/sign_in_widget.dart';

import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                buildThirdPartyLogin(context),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
