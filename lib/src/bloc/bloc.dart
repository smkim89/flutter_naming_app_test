
import 'dart:async';

import 'package:english_words/english_words.dart';

class Bloc{
  Set<WordPair> saved = Set<WordPair>();

  //스냅샷을 동시에 뿌려주기위해서 broadcast로 한다.
  final _savedController = StreamController<Set<WordPair>>.broadcast();

  get savedListStream => _savedController.stream;

  get addCurrentSaved => _savedController.sink.add(saved);

  addToOrRemoveFromSavedList(WordPair wordPair){
    if(saved.contains(wordPair)){
      saved.remove(wordPair);
    }else{
      saved.add(wordPair);
    }

    _savedController.sink.add(saved);
  }

  //Stream을 사용하면 close해줘야한다.
  dispose(){
    _savedController.close();
  }
}



var bloc = Bloc();