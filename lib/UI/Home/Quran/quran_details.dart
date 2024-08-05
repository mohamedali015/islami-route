import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/Home/Quran/verses_content.dart';
import 'package:islami/UI/defult_scaffold.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "Quran Details";

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as ChapterDetailsArgs;

    if (verses.isEmpty) {
      readFileData(arg.chapterIndex);
    }
    return DefultScaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text(arg.chapterTitle),
        ),
        body: Card(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: verses.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return VersesContent(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readFileData(int chapterIndex) async {
    String fileCountent = await rootBundle
        .loadString("Assets/Quran-Suras/${chapterIndex + 1}.txt");
    List<String> lines = fileCountent.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs({required this.chapterIndex, required this.chapterTitle});
}
