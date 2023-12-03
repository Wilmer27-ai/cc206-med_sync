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
        title: const Center(
          child: Text('What are you looking for?',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 33,
            color: Color.fromARGB(255, 25, 23, 149),
           ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 1),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              children: [ 
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 0),
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 1),
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 2),
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 3),
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 4),
                _buildGridButton(context,'assets/images/medicine_library.png', 100, 100, 5),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildGridButton(BuildContext context, String imagePath, double buttonHeight, double buttonWidth, int index) {
  return InkWell(
    onTap: index == 4 
    ? () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MedicineLibrary()),
      );
    }
    : null,
    child: Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color.fromARGB(230, 232, 230, 230),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          imagePath,
          height: buttonHeight,
          width: buttonWidth,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
 