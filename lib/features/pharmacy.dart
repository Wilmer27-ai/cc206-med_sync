import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

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
        flexibleSpace: const Column(
          children: [
            SizedBox(height: 30), // Add padding to the top
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Online Pharmacy',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Color.fromARGB(255, 25, 23, 149),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Manila, Philippines',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: const [
          // Remove the cart icon from the title page
        ],
      ),
    body: Container(
  constraints: BoxConstraints(
    minHeight: MediaQuery.of(context).size.height,
  ),
  padding: const EdgeInsets.all(8.0),
  child: CustomScrollView(
    slivers: [
      SliverList(
        delegate: SliverChildListDelegate([
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search for drugs...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'All Products',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return InkWell(
              onTap: () {},
              child: ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: index == 0
                      ? Image.asset(
                          'lib/features/assets/ph1.png',
                          fit: BoxFit.fill,
                        )
                      : index == 1
                          ? Image.asset(
                              'lib/features/assets/ph2.png',
                              fit: BoxFit.fill,
                            )
                          : index == 2
                              ? Image.asset(
                                  'lib/features/assets/ph3.png',
                                  fit: BoxFit.fill,
                                )
                              : index == 3
                                  ? Image.asset(
                                      'lib/features/assets/ph4.png',
                                      fit: BoxFit.fill,
                                    )
                                  : index == 4
                                      ? Image.asset(
                                          'lib/features/assets/ph1.png',
                                          fit: BoxFit.fill,
                                        )
                                      : index == 5
                                          ? Image.asset(
                                              'lib/features/assets/ph1.png',
                                              fit: BoxFit.fill,
                                            )
                                          : index == 6
                                              ? Image.asset(
                                                  'lib/features/assets/ph3.png',
                                                  fit: BoxFit.fill,
                                                )
                                              : index == 7
                                                  ? Image.asset(
                                                      'lib/features/assets/ph1.png',
                                                      fit: BoxFit.fill,
                                                    )
                                                  : index == 8
                                                      ? Image.asset(
                                                          'lib/features/assets/ph2.png',
                                                          fit: BoxFit.fill,
                                                        )
                                                      : index == 9
                                                          ? Image.asset(
                                                              'lib/features/assets/ph4.png',
                                                              fit: BoxFit.fill,
                                                            )
                                                          : Image.asset(
                                                              'lib/features/assets/ph2.png',
                                                              fit: BoxFit.fill,
                                                            ),
                ),
              ),
            );
          },
          childCount: 10,
        ),
      ),
    ],
  ),
),
    );
  }
} 
