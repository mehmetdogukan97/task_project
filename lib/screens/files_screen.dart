import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
class FilesScreen extends StatefulWidget {
  final List<PlatformFile> files;
  final ValueChanged<PlatformFile> onOpenedFile;
  const FilesScreen({Key? key, required this.files, required this.onOpenedFile}) : super(key: key);

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
