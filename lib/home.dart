import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'widgets/widget_word.dart';

class Home extends StatelessWidget {
  final List<String> words = nouns.take(10).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('English Words')),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: words.length,
          itemBuilder: (ctx, index) {
            final item = words[index];
            return ItemWord(item);
          },
        ),
      ),
    );
  }
}
