import 'package:chat_analyzer_app/utils/widgets/body_text.dart';
import 'package:chat_analyzer_app/views/home/importing_steps.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:file_picker/file_picker.dart';

import '../../utils/widgets/button.dart';
import '../../utils/widgets/description_text.dart';
import '../../utils/widgets/title_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _filePath;

  Future<void> _openFilePicker() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
      );

      if (result != null) {
        setState(() {
          _filePath = result.files.single.path;
        });
      }
    } catch (e) {
      print('Error picking file: $e');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Chat Analyzer"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 4.h),
                DefaultButton(
                  onTap: () {
                    _openFilePicker();
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Result()));
                  },
                  child: const TextTitleMedium(text: "Import Text file"),
                ),
                //
                SizedBox(height: 4.h),
                if (_filePath != null)
                  TextDescriptionSmall(text: 'Selected File: $_filePath'),
                //
                const ImportingStepsText()
              ],
            ),
          ),
        ),
      );

  // Widget importingStepsText() {
  //   return SizedBox(
  //     width: 90.w,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(height: 16),
  //         TextTitleSmall(text: '1. Import Text File'),
  //         Padding(
  //             padding: const EdgeInsets.only(left: 12),
  //             child: TextBodyMedium(
  //                 text:
  //                     ' Tap on the "Import Text file" button on the Home Screen. This action will open the file picker dialog.')),
  //         SizedBox(height: 8),
  //         TextTitleSmall(text: '2. Import Text File'),
  //         Padding(
  //             padding: const EdgeInsets.only(left: 12),
  //             child: TextBodyMedium(
  //                 text:
  //                     ' Tap on the "Import Text file" button on the Home Screen. This action will open the file picker dialog.')),
  //       ],
  //     ),
  //   );
  // }
}
// Import Text File:

//     Tap on the "Import Text file" button on the Home Screen. This action will open the file picker dialog.

// Select Text File:

//     In the file picker dialog, browse through your device's storage to locate and select the text file containing the chat data you want to analyze. Only files with the ".txt" extension will be visible for selection due to the specified allowed extension in the code.
