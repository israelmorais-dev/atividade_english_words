import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ItemWord extends StatelessWidget {
  final String word;

  ItemWord(this.word);

  String getText(int syllablesCount) {
    return syllablesCount > 1
        ? '$syllablesCount syllables'
        : '$syllablesCount syllable';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(word),
      subtitle: Text(getText(syllables(word))),
    );
  }
}
