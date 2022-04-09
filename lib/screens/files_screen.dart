import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:task_project/utils/StringRes.dart';
import 'package:task_project/utils/colors.dart';

class FilesScreen extends StatefulWidget {
  final List<PlatformFile> files;
  final ValueChanged<PlatformFile> onOpenedFile;

  const FilesScreen({Key? key, required this.files, required this.onOpenedFile})
      : super(key: key);

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.upload),
          ),
        ],
        title: Text(
          StringRes.filesScreenAppBarTitle,
        ),
        centerTitle: true,
        backgroundColor: mobileAllFilesScreenAppBarColor,
      ),
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: widget.files.length,
          itemBuilder: (context, index) {
            final file = widget.files[index];
            return buildFile(file);
          },
        ),
      ),
    );
  }

  Widget buildFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final fileSize =
        mb >= 1 ? '${mb.toStringAsFixed(2)}MB' : '${kb.toStringAsFixed(3)}KB';
    final extension = file.extension ?? 'none';

    return InkWell(
      onTap: () => widget.onOpenedFile(file),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: mobileAllFilesScreenCardColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '.$extension',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: mobileAllFilesScreenCardTxtColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              file.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              fileSize,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
