// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedButtonImage extends StatelessWidget {
  final String? btText;
  final String? imageAsset;
  final Function()? onTap;
  const RoundedButtonImage({Key? key, this.btText, this.imageAsset, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageAsset!),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(btText!),
          ),
        ],
      ),
      onPressed: () {
        onTap!();
      },
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
      ),
    );
  }
}
