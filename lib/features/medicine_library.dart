import 'package:flutter/material.dart';

class MedicineLibrary extends StatelessWidget {
  const MedicineLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Medicine Library',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromARGB(255, 25, 23, 149),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              children: [
                _buildGridButton('lib/features/assets/1.png'),
                _buildGridButton('lib/features/assets/2.png'),
                _buildGridButton('lib/features/assets/3.png'),
                _buildGridButton('lib/features/assets/4.png'),
                _buildGridButton('lib/features/assets/5.png'),
                _buildGridButton('lib/features/assets/6.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildGridButton( String imagePath){
return Container(
  margin: const EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: const Color.fromARGB(230, 232, 230, 230)
  ),
  child: ClipRRect( 
    borderRadius:  BorderRadius.circular(20.0),
    child: Image.asset( 
        imagePath,
        height: 60,
        width: 60,
        fit: BoxFit.cover,
        ),
  ),
);
}
