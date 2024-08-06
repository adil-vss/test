import 'package:flutter/material.dart';
import 'package:untitled1/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7e7e7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(color: Color(0xffda7065), width: 2), // Red border color with width 2
                  borderRadius: BorderRadius.circular(15), // Optional: match Card border radius
                ),
                child: Card(
                  margin: EdgeInsets.zero,

                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Image takes 30% of the row
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Image.network(
                                'https://via.placeholder.com/150', // Placeholder image
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Column for name and address
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Centre Name',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Branch: Ghatkopar',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("150"), // Updated Member count
                                      Text("Members"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text("20"), // Updated Staff count
                                      Text("Staff"),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Update',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffda7065),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12.0,
                                    horizontal: 80.0,
                                  ),
                                  textStyle: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between card and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 100), // Square button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Border radius
                    ),
                  ),
                  child: const Icon(Icons.share),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffda7065),
                    fixedSize: const Size(150, 100), // Square button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Border radius
                    ),
                  ),
                  child: const Icon(Icons.notifications),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(color: Color(0xffda7065), width: 2), // Red border color with width 2
                  borderRadius: BorderRadius.circular(15), // Optional: match Card border radius
                ),
                child: Card(
                  color: Color(0xfff1d7d8),
                  margin: EdgeInsets.zero,

                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Image takes 30% of the row
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Icon(Icons.feedback,
                              size: 50,
                              )
                            ),
                            // Column for name and address
                             Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wanna give feedback or raise a issue ?',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('send feedback',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffda7065),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 12.0,
                                          horizontal: 50.0,
                                        ),
                                        textStyle: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomElevatedButton(text: "update", height: 12, width: 70, onTap:(){} )

          ],
        ),
      ),
    );
  }
}
