import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../utils/widgets/description_text.dart';
import '../../utils/widgets/title_text.dart';

class ImportingStepsText extends StatefulWidget {
  const ImportingStepsText({super.key});

  @override
  State<ImportingStepsText> createState() => _ImportingStepsTextState();
}

class _ImportingStepsTextState extends State<ImportingStepsText> {
  final Map<String, String> stepsData = {
    'Step 1 :':
        'Tap on the "Import Text file" button on the Home Screen. This action will open the file picker dialog.',
    'Step 2 :':
        'Select the desired text file from the file picker dialog by browsing through your device\'s storage.',
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: stepsData.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTitleLarge(text: entry.key),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextDescriptionSmall(text: entry.value),
                ),
                SizedBox(height: 1.4.h),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
