
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamingvalue = StreamProvider<int>((ref) => streamnumbers());

Stream<int> streamnumbers(){
  return  Stream<int>.periodic(
    Duration(seconds: 1),(number){
      return number;
    }
  ).take(20);
}