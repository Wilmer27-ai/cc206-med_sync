import 'package:cc206_med_sync/features/medicine_library.dart';
import 'package:flutter/material.dart';



// ignore: camel_case_types
class med_search extends StatelessWidget {
  const med_search({Key? key}) : super(key: key);

  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What are you looking for'),
      ),
      body: const MedicineLibrary(),
    );
  }
}
