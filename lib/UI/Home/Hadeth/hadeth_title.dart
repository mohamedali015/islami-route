import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_details.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_tap.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle({
    super.key,
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: hadeth);
      },
      child: Row(
        children: [
          Expanded(
              child: Center(
                  child: Text(
            hadeth.title,
            style: const TextStyle(fontSize: 20),
          ))),
          const SizedBox(
            height: 50,
            child: VerticalDivider(
              color: Color(0xFFB7935F),
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
