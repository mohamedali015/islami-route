import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Quran/quran_details.dart';

class ChapterTitle extends StatelessWidget {
  int index;
  String title;
  String verses;

  ChapterTitle(
      {super.key,
      required this.title,
      required this.verses,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetails.routeName,
            arguments:
                ChapterDetailsArgs(chapterTitle: title, chapterIndex: index));
      },
      child: Row(
        children: [
          Expanded(
              child: Center(
                  child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ))),
          const SizedBox(
            height: 50,
            child: VerticalDivider(
              color: Color(0xFFB7935F),
              thickness: 2,
            ),
          ),
          Expanded(
              child: Center(
                  child: Text(
            verses,
            style: Theme.of(context).textTheme.bodyLarge,
          ))),
        ],
      ),
    );
  }
}
