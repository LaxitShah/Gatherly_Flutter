import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(aOr),
        const SizedBox(
          height: AFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(AGoogleLogoImage),
                width: 20,
              ),
              onPressed: () {},
              label: Text(aLoginWithGoogle)),
        ),
        const SizedBox(
          height: AFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
            text: aDontHaveAnAccount,
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                text: ASignUp,
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
