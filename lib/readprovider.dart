import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 final  stringprovider = Provider<String>((ref){
  return 'talha';
});

class readprovider extends ConsumerWidget {
  const readprovider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String name = ref.read<String>(stringprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: const TextStyle(fontSize: 20),),
      ),
    );
  }
}