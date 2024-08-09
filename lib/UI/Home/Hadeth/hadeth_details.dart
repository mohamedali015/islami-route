import 'package:flutter/material.dart';
import 'package:islami/UI/Home/Hadeth/hadeth_tap.dart';
import 'package:islami/UI/defult_scaffold.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "Hadeth Details";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;

    return DefultScaffold(
        body: Scaffold(
      appBar: AppBar(
        title: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Card(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hadeth.content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
