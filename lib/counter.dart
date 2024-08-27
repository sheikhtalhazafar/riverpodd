import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/provider/counterprovider.dart';

class mycounter extends ConsumerWidget {
  const mycounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(countriverprovider);
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child){
            return Center(child: Text(counter.toString()));
          },
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.read(countriverprovider.notifier).state++;
      },
      child: Icon(Icons.add),
      ),
    );
  }
}