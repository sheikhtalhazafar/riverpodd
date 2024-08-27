import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/provider/widgetprovider.dart';


final mytestwidget = StateProvider<bool>((ref) {
  return false;
});

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool tester =ref.watch(mytestwidget);
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          return Center(child: Container(
            width: 200,
            height: 200,
            color: tester ? Colors.amber : Colors.red,
          ));
        },    
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(mytestwidget.notifier).state = !tester;
      },
      child: const Icon(Icons.cleaning_services),
      ),
    );
  }
}