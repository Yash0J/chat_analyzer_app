import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/body_text.dart';

class StatsTabbarView extends StatefulWidget {
  const StatsTabbarView({
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

  Widget showStatusPriority() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextBodyLarge(text: "Show status for"),
        Container(
          decoration: BoxDecoration(
            color: Appcolor.primary,
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
            focusColor: Appcolor.primary,
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
    );
  }

  Widget mostUsedEmojies() {
    return const StatusTile(
      title: "Words per user",
      data: "😂 😍 😁",
    );
  }

  Widget mostSentLink() {
    return const StatusTile(
      title: "Emojis per user",
      data: "😂 😍 😁",
    );
  }

  Widget sentWords() {
    return const StatusTile(
      title: "Media File per user",
      data:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    );
  }

  Widget sentMessages() {
    return const StatusTile(
      title: "Links per users ",
      data:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    );
  }

  Widget mostUsedWords() {
    return const StatusTile(
      title: "Most used words",
      data:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    );
  }
}
