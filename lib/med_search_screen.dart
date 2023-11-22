import 'package:cc206_med_sync/features/medicine_library.dart';
import 'package:flutter/material.dart';
import 'package:cc206_med_sync/med_search_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med Sync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('What are you looking for'),
        ),
        body: const MedicineLibrary(),
      ),
    );
  }
}
