import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'src/random_list.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: RandomList(),

    );
  }

}