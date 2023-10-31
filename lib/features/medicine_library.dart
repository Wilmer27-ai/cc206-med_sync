import 'package:flutter/material.dart';

class MedicineLibrary extends StatelessWidget {
  const MedicineLibrary({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30), // Adjust the top padding 
              child: Text(
                'Medicine Library',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Color.fromARGB(255, 25, 23, 149),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //SEARCH
             Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300], // Set the background color to gray
                            borderRadius: BorderRadius.circular(25.0), // Set the radius as needed
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for diseases, remedies, etc...',
                              border: InputBorder.none, // Remove the default border
                              contentPadding: EdgeInsets.all(10.0), // Add padding to the input field
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0), // Add some spacing between the text field and the icon
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300], // Set the background color of the circular icon to gray
                        ),
                        child: const Icon(
                          Icons.search, // Icons class
                          color: Color.fromARGB(255, 25, 23, 149), // Set the icon color
                          size: 30.0, // Set the size of the icon
                        ),
                      ),
                    ],
                  ),

            //SEARCH
            
            const SizedBox(height: 1),
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

