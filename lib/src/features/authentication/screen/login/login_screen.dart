import 'package:f1/src/constants/image_string.dart';
import 'package:f1/src/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(ADefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //part 1
                LoginHandleWidget(size: size),
                //part 2
                const LoginForm(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
