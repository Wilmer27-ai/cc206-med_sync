import 'package:flutter/material.dart';

class MedicineLibrary extends StatelessWidget{
  const MedicineLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
           const Text('Medicine Library',
           style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Color.fromARGB(255, 25, 23, 149)),
           ),
           const SizedBox(height: 20),
           const Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
           ),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                _buildGridButton('Button 1', 'lib/features/assets/1.png'),
                _buildGridButton('Button 2', 'lib/features/assets/2.png'),
                _buildGridButton('Button 3', 'lib/features/assets/3.png'),
                _buildGridButton('Button 4', 'lib/features/assets/4.png'),
                _buildGridButton('Button 5', 'lib/features/assets/5.png'),
                _buildGridButton('Button 6', 'lib/features/assets/6.png'),
              ],
            )
          ]
        ),
      ),
      ),
    );
  }
}

Widget _buildGridButton(String label, String imagePath){
return Container(
  margin: const EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromARGB(255, 8, 8, 8)),
  ),
  child: Column( 
    children: [
      Image.asset( 
        imagePath,
        height: 80,
        width: 80,
        fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(label),
    ],
  ),
);
}
