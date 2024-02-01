import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/body_text.dart';

class StatsTabbarView extends StatefulWidget {
  StatsTabbarView({
    super.key,
  });

  @override
  State<StatsTabbarView> createState() => _StatsTabbarViewState();
}

class _StatsTabbarViewState extends State<StatsTabbarView> {
  String _selectedItem = 'All';
  // Initial value for the dropdown
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 1.5.h),
          showStatusPriority(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                mostUsedEmojies(),
                mostSentLink(),
                sentWords(),
                sentMessages(),
                mostUsedWords(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container showStatusPriority() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextBodyLarge(text: "Show status for"),
          Container(
            decoration: BoxDecoration(
              color: Appcolor.navy,
              borderRadius: BorderRadius.circular(9),
            ),
            child: DropdownButton<String>(
              value: _selectedItem, // Current selected value
              onChanged: (newValue) {
                setState(() {
                  _selectedItem = newValue!; // Update the selected value
                });
              },
              isDense: true,
              focusColor: Appcolor.navy,
              dropdownColor: Appcolor.white,
              borderRadius: BorderRadius.circular(13),

              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              icon: null,
              items: <String>[
                'All', // List of dropdown menu items
                'Amit',
                'Yash',
                'Saksham',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: TextBodyLarge(text: value),
                );
              }).toList(),
              menuMaxHeight: 28.h,
            ),
          ),
        ],
      ),
    );
  }
}

Widget mostUsedEmojies() {
  return StatusTile(
    title: "Words per user",
    children: [
      const TextBodyMedium(text: "😂 😍 😁"),
    ],
  );
}

Widget mostSentLink() {
  return StatusTile(
    title: "Emojis per user",
    children: [
      const TextBodyMedium(text: "😂 😍 😁"),
    ],
  );
}

Widget sentWords() {
  return StatusTile(
    title: "Media File per user",
    children: [
      const TextBodyMedium(
          text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
    ],
  );
}

Widget sentMessages() {
  return StatusTile(
    title: "Links per users ",
    children: [
      const TextBodyMedium(
          text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
    ],
  );
}

Widget mostUsedWords() {
  return StatusTile(
    title: "Most used words",
    children: [
      const TextBodyMedium(
          text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
    ],
  );
}
