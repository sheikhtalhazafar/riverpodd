import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/futureprovider/weatherprovider.dart';

class myweather extends ConsumerWidget {
  const myweather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: ref
          .watch(futuredataget)
          .when(data: (data){
            return Center(child: Text(data.toString()));
          }, error: (error, StackTrace){
            return  Text(error.toString());
          }, loading: (){
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
