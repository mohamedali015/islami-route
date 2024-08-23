import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_title.dart';

import '../../../ui_utils.dart';

class HadethTap extends StatefulWidget {
  const HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> allHadeth = [];

  @override
  void initState() {
    super.initState();
    readHadethContent();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          "Assets/Images/hadith_header.png",
          width: size.width,
          height: size.height * 0.3,
        ),
        const Divider(
          color: Color(0xFFB7935F),
          height: 5,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            getTranslation(context).hadethNum,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Divider(
          color: Color(0xFFB7935F),
          height: 5,
          thickness: 2,
        ),
        Expanded(
          child: allHadeth.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitle(
                      hadeth: allHadeth[index],
                    );
                  },
                  itemCount: allHadeth.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Color(0xFFB7935F),
                        height: 5,
                        thickness: 1,
                      ),
                    );
                  },
                )
              : const Center(child: CircularProgressIndicator()),
        )
      ],
    );
  }

  void readHadethContent() async {
    String fileContent =
        await rootBundle.loadString("Assets/Hadeth/ahadeth.txt");
    List<String> separtedHadeth = fileContent.split("#");

    for (int i = 0; i < separtedHadeth.length; i++) {
      String singleHadeth = separtedHadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");

      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth hadeth = Hadeth(title: title, content: content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;

  String content;

  Hadeth({required this.title, required this.content});
}