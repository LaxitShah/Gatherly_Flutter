import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_strings.dart';

class LoginHandleWidget extends StatelessWidget {
  const LoginHandleWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(ALoginScreenImage),
          height: size.height * 0.2,
        ),
        Text(ALoginTitle, style: Theme.of(context).textTheme.headline3),
        Text(ALoginSubTitle,
            style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
