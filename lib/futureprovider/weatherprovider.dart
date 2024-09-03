import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/futureprovider/weatherapi.dart';

final futuredataget = FutureProvider<String>((ref){
  return  furturedata();
});