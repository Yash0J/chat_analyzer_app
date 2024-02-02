import 'package:chat_analyzer_app/utils/widgets/button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/color.dart';
import '../../utils/constants/widgits.dart';
import '../../utils/widgets/body_text.dart';
import '../../utils/widgets/description_text.dart';
import '../../utils/widgets/display_text.dart';
import '../../utils/widgets/title_text.dart';
import 'graphs/days_with_most_message.dart';
import 'graphs/emojis_per_user.dart';
import 'graphs/links_per_users.dart';
import 'graphs/media_file_per_user.dart';
import 'graphs/message_per_hour_of_day.dart';
import 'graphs/message_per_month.dart';
import 'graphs/messages_per_day_of_the_week.dart';
import 'graphs/messages_per_user.dart';
import 'graphs/most_used_words.dart';
import 'graphs/words_per_user_chart.dart';

class AnalyzedScreen extends StatefulWidget {
  const AnalyzedScreen({super.key});

  @override
  State<AnalyzedScreen> createState() => _AnalyzedScreenState();
}

class _AnalyzedScreenState extends State<AnalyzedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundGreenContainer(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      SizedBox(height: 3.h),
                      topHeadingContainer(),
                      SizedBox(height: 2.h),
                      totalChatCount(),
                      textTotalMessage(),
                      SizedBox(height: 2.h),
                      generateAIbutton(),
                      // SizedBox(height: 1.h),

                      SizedBox(height: 2.h),
                      const AchievementColumn(),
                      staticalList(),
                      const WordsPerUserChart(),
                      const MediaFilePerUser(),
                      const EmojisPerUser(),
                      const LinksPerUsers(),
                      const MessagesPerDayOfTheWeek(),
                      const MessagePerHourOfDay(),
                      const MessagePerMonth(),
                      const DaysWithMostMessage(),
                      const MessagesPerUser(),
                      const MostUsedWords(),
                      //
                      SizedBox(height: 2.h),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Align generateAIbutton() {
    return Align(
      alignment: Alignment.center,
      child: DefaultButton(
        onTap: () {},
        radius: 12,
        color: Appcolor.transparentWhite,
        boderWidth: 2,
        boderColor: Appcolor.background,
        child: TextTitleMedium(
          text: "Genrate AI Analysis",
          color: Appcolor.white,
        ),
      ),
    );
  }

  ListContainer staticalList() => const ListContainer(
        children: [
          StatusTile(
              // image: ,
              circleChild: Icon(Icons.chat),
              title: "Total Words",
              data: "1324"),
          StatusTile(
              // image: ,
              title: "Total Letters",
              data: "1324"),
          StatusTile(
              // image: ,
              title: "Total Files Shared",
              data: "1324"),
          StatusTile(
              // image: ,
              title: "Total Emojies",
              data: "1324"),
          StatusTile(
              // image: ,
              title: "Total Links",
              data: "1324"),
        ],
      );

  Widget textTotalMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBodyLarge(
          text: " Total messages",
          color: Appcolor.white,
        ),
        TextBodyLarge(
          text: " Total days",
          color: Appcolor.white,
        ),
      ],
    );
  }

  Widget totalChatCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextDisplayLarge(
          text: "2123",
          size: 70,
          color: Appcolor.white,
        ),
        TextDisplayLarge(
          text: "212",
          color: Appcolor.white,
        ),
      ],
    );
  }

  Container topHeadingContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Appcolor.transparentWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextDescriptionMedium(
        text: "Chat Analysis",
        color: Appcolor.white,
      ),
    );
  }

  Align backgroundGreenContainer() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Appcolor.primary,
              // spreadRadius: 0.5,
              blurRadius: 9,
            ),
          ],
          gradient: LinearGradient(colors: [
            Appcolor.primary,
            Appcolor.secondry,
          ]),
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(12)),
        ),
      ),
    );
  }
}

class AchievementColumn extends StatelessWidget {
  const AchievementColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mostMessages(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _mostTalktive(),
            _influencer(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _earlyBird(),
            _nightOwl(),
          ],
        ),
      ],
    );
  }

  ListContainer _earlyBird() {
    return ListContainer(
      width: 45.w,
      children: [
        const TextTitleSmall(
          text: "Early bird",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.4.h),

        const TextTitleLarge(
          text: "Harsh Pareek",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        TextTitleSmall(
          text: "Total of messages send by the user: 213",
          color: Appcolor.tertiory,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        // StatusTile(
        //   title: "Most messagging person",
        // )
      ],
    );
  }

  ListContainer _nightOwl() {
    return ListContainer(
      width: 45.w,
      children: [
        const TextTitleSmall(
          text: "Night owl",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.4.h),

        const TextTitleLarge(
          text: "Harsh Pareek",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        TextTitleSmall(
          text: "Total of messages send by the user: 213",
          color: Appcolor.tertiory,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        // StatusTile(
        //   title: "Most messagging person",
        // )
      ],
    );
  }

  ListContainer _influencer() {
    return ListContainer(
      width: 45.w,
      children: [
        const TextTitleSmall(
          text: "Influencer",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.4.h),

        const TextTitleLarge(
          text: "Harsh Pareek",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        TextTitleSmall(
          text: "Total of messages send by the user: 213",
          color: Appcolor.tertiory,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        // StatusTile(
        //   title: "Most messagging person",
        // )
      ],
    );
  }

  ListContainer _mostTalktive() {
    return ListContainer(
      width: 45.w,
      children: [
        const TextTitleSmall(
          text: "Most talkative",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.4.h),

        const TextTitleLarge(
          text: "Harsh Pareek",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        TextTitleSmall(
          text: "Total of messages send by the user: 213",
          color: Appcolor.tertiory,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        // StatusTile(
        //   title: "Most messagging person",
        // )
      ],
    );
  }

  ListContainer mostMessages() {
    return ListContainer(
      width: double.maxFinite,
      children: [
        const TextTitleSmall(
          text: "🔥 Most messaging 🔥",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.4.h),

        const TextTitleLarge(
          text: "Yash Jangid",
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        TextTitleSmall(
          text: "Total of messages send by the user: 213",
          color: Appcolor.tertiory,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
        ),

        // StatusTile(
        //   title: "Most messagging person",
        // )
      ],
    );
  }
}
