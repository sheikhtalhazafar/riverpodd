import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodd/counter.dart';
import 'package:riverpodd/future/weatherdataScreen.dart';
import 'package:riverpodd/statenotifierprovider/counterscreen.dart';
import 'package:riverpodd/stateprovider/counterprovider.dart';
import 'package:riverpodd/readprovider.dart';
import 'package:riverpodd/stream/streamdata.dart';
import 'package:riverpodd/testwidget.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: readprovider(),
      // home: const myweather(),
      // home: const mystreming(),
      home: const CounterScreen(),
    );
  }
}

