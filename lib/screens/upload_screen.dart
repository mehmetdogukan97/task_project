import 'package:flutter/material.dart';
import 'package:task_project/utils/StringRes.dart';
import 'package:task_project/widgets/upload_image_widget.dart';

import '../utils/colors.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: mobileAppBarColor,
        title: Text(
          StringRes.appBarTitle,
          style: const TextStyle(
            color: mobileAppBarTextColor,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          UploadImageWidget(),
        ],
      ),
    );
  }
}
