import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/statenotifierprovider/statenotifier.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(counter);
    return Scaffold(
      body:  Center(child: Text(count.toString())),

      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.read(counter.notifier).increment();
      },
      child: const Icon(Icons.add),),
    );
  }
}