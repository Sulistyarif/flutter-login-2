// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? btText;
  final Function()? onTap;
  const RoundedButton({Key? key, this.btText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap!();
      },
      child: Text(btText!),
      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
    );
  }
}
