import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/streamprovider/numberStream.dart';

class mystreming extends ConsumerWidget {
  const mystreming({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    var stmvalue = ref.watch(streamingvalue);
    return Scaffold(
      body: stmvalue.when(data: (data){
            return Center(child: Text(data.toString()));
          }, error: (error, StackTrace){
            return  Text(error.toString());
          }, loading: (){
            return const Center(child: CircularProgressIndicator());
          }),
      
      );
  }
}