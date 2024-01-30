import 'package:flutter/material.dart';

import '../utils/widgets/headline_text.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHeadlineLarge(text: "Result page"),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextHeadlineLarge(text: "Result page"),
              // DefaultButton(
              //   child: const TextHeadlineLarge(text: "Result page"),
              //   onTap: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
