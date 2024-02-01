import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:file_picker/file_picker.dart';

import '../../utils/constants/color.dart';
import '../../utils/widgets/button.dart';
import '../../utils/widgets/display_text.dart';
import '../../utils/widgets/title_text.dart';
import '../result/result_screen.dart';
import 'importing_steps.dart';

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
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Result()));
    } catch (e) {
      print('Error picking file: $e');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: AppBar(
        //   title: TextHeadlineLarge(
        //     text: "Chat Analyzer",
        //     color: Appcolor.white,
        //   ),
        //   // backgroundColor: Appcolor.primary,
        // ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Appcolor.primary,
                      // spreadRadius: 0.5,
                      blurRadius: 7,
                    ),
                  ],
                  gradient: LinearGradient(colors: [
                    Appcolor.primary,
                    Appcolor.secondry,
                  ]),
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(23)),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13.h,
                        child: Center(
                          child: TextDisplaySmall(
                            text: "Chat Analyzer App",
                            color: Appcolor.white,
                          ),
                        ),
                      ),

                      DefaultButton(
                          onTap: () {
                            _openFilePicker();
                          },
                          height: 20.h,
                          width: 92.w,
                          color: Appcolor.transparentWhite,
                          child: TextTitleLarge(
                            text: "Tap here to import file",
                            color: Appcolor.white,
                          )),
                      //
                      SizedBox(height: 4.h),
                      //
                      // if (_filePath != null)
                      //   TextDescriptionSmall(text: 'Selected File: $_filePath'),
                      //
                      const ImportingStepsText(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
