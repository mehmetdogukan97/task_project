import 'package:flutter/material.dart';
import 'package:task_project/widgets/upload_image_widget.dart';

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
        title: const Text("Upload Screen"),
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
