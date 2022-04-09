import 'package:flutter/material.dart';
class UploadImageWidget extends StatelessWidget {
  const UploadImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/upload.png',
        width: 200,
        height: 200,
      ),
    );
  }
}
