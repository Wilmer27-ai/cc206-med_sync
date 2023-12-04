import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MedicineLibrary extends StatelessWidget {
  const MedicineLibrary({Key? key}) : super(key: key);

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Medicine Library',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800,
            fontSize: 40,
            color: Color.fromARGB(255, 25, 23, 149),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                _buildGridButton('lib/features/assets/1.png','https://neurolrespract.biomedcentral.com/articles'),
                _buildGridButton('lib/features/assets/2.png','https://www.mayoclinic.org/diseases-conditions/heart-disease/symptoms-causes/syc-20353118#:~:text=Heart%20diseases%20include%3A,Disease%20of%20the%20heart%20muscle'),
                _buildGridButton('lib/features/assets/3.png','https://www.niddk.nih.gov/health-information/digestive-diseases'),
                _buildGridButton('lib/features/assets/4.png','https://www.webmd.com/lung/lung-diseases-overview'),
                _buildGridButton('lib/features/assets/5.png','https://www.niddk.nih.gov/health-information/urologic-diseases'),
                _buildGridButton('lib/features/assets/6.png','https://www.cdc.gov/reproductivehealth/womensrh/healthconcerns.html'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildGridButton( String imagePath, String link ){
  return InkWell(
    onTap:() {
      launch(link);
    },
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
           height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}


