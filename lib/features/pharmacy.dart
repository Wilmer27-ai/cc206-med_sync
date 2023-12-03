import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Online Pharmacy',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Color.fromARGB(255, 25, 23, 149),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Location Icon
            Icon(
              Icons.location_on,
              size: 100,
              color: Color.fromARGB(255, 25, 23, 149),
            ),
            SizedBox(height: 10),
            Text(
              'Manila, Philippines',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
