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
          StringRes.uploadScreenAppBarTitle,
          style: const TextStyle(
            color: mobileAppBarTextColor,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const UploadImageWidget(),
          const SizedBox(
            height: 70,
          ),
          Text(
            StringRes.uploadScreenDescription,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
            child: Text(
              StringRes.uploadScreenSubDescription,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              StringRes.uploadScreenSizeDescription,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          InkWell(
            onTap: (){print("Hello");},
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  Text(
                  StringRes.uploadScreenButtonText,
                  style: const TextStyle(
                    fontSize: 20,
                    color: mobileUploadScreenUploadBtnTxtColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
