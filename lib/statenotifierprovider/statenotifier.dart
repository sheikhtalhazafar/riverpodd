import 'package:flutter_riverpod/flutter_riverpod.dart';

final counter = StateNotifierProvider<Countnotifier, int>((ref){
  return Countnotifier();
});

class Countnotifier extends StateNotifier<int>{
  Countnotifier() : super(0);

  void increment(){
    state = state+1;
  }
}