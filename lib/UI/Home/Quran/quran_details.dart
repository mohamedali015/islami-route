import 'package:flutter/material.dart';
import 'package:islami/UI/defult_scaffold.dart';

class QuranDetails extends StatelessWidget {
  static const String routeName = "Quran Details";

  const QuranDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as ChapterDetailsArgs;
    return DefultScaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text(arg.chapterTitle),
        ),
        body: Card(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const Text(
                "Details",
                textAlign: TextAlign.center,
              );
            },
            itemCount: 100,
          ),
        ),
      ),
    );
  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs({required this.chapterIndex, required this.chapterTitle});
}
