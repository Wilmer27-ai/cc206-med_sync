import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
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
            const SizedBox(height: 20),
            // Location Icon
            Icon(
              Icons.location_on,
              size: 100,
              color: Color.fromARGB(255, 25, 23, 149),
            ),
            const SizedBox(height: 10),
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
