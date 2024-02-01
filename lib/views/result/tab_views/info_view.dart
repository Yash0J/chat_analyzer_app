import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/widgits.dart';
import '../../../utils/widgets/body_text.dart';
import '../../../utils/widgets/headline_text.dart';

class InfoTabbarView extends StatelessWidget {
  const InfoTabbarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 1.h),
              chatInfoBox(),
              SizedBox(height: 1.h),
              youBeenChatting(context),
              SizedBox(height: 4.h),
              _activityInfo(),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget youBeenChatting(context) {
    return SizedBox(
      width: 55.w,
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            const TextSpan(text: "You have been chatting with "),
            TextSpan(
                text: "Sia ",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Appcolor.navy, fontWeight: FontWeight.w700)),
            const TextSpan(text: "since "),
            TextSpan(
                text: "2018 ",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Appcolor.navy, fontWeight: FontWeight.w700)),
            const TextSpan(text: "with an average of "),
            TextSpan(
                text: "2.4 ",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Appcolor.navy, fontWeight: FontWeight.w700)),
            const TextSpan(text: "messages per day."),
          ],
        ),
      ),
    );
  }

  Widget chatInfoBox() {
    return Container(
      width: 80.w,
      height: 10.h,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        // color: Appcolor.navy.withOpacity(0.58),
        color: Appcolor.navy,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 4, color: Appcolor.navy),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _chatInfoBoxDta("423", "Messages"),
          _chatInfoBoxDta("14", "Users"),
          _chatInfoBoxDta("197", "Days"),
        ],
      ),
    );
  }

  Widget _chatInfoBoxDta(headText, tailText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextHeadlineMedium(text: headText),
        TextBodyMedium(text: tailText),
      ],
    );
  }

  Widget _activityInfo() {
    return GridView.count(
      crossAxisCount: 2, // two rows

      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: const [
        StatsCard(
          headText: "Most talkative",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
        StatsCard(
          headText: "Influencer",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
        StatsCard(
          headText: "Early bird and night owl",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
        StatsCard(
          headText: "Influencer",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
        StatsCard(
          headText: "Influencer",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
        StatsCard(
          headText: "Influencer",
          bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        ),
      ],
    );
  }

  //
  //
}
