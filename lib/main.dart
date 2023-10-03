import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DynamicGallery(),
    );
  }
}

class DynamicGallery extends StatefulWidget {
  const DynamicGallery({Key? key}) : super(key: key);

  @override
  _DynamicGalleryState createState() => _DynamicGalleryState();
}

class _DynamicGalleryState extends State<DynamicGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO1CV0pHwcT9Y3Z1oHHypnKTPU0zYIXa4F1GTARLZn&s',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Text(
                    'Labib Zaman',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industry standard dummy text ever since the 1500s.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Container(
                  width: 400,
                  height: 480,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical, // Enable horizontal scrolling
            child: Row(
              children: [
                // Container with ClipOval
                Container(
                  height: 350,
                  width: 380,
                  child: ClipOval(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO1CV0pHwcT9Y3Z1oHHypnKTPU0zYIXa4F1GTARLZn&s',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 35,),


                // GridView
                Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      height: 40,
                      child: Text(
                          'Labib Zaman',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                    ),
                    SizedBox(height: 10), // Adjust spacing as needed
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                      style: TextStyle(
                        fontSize: 14, // Reduce font size
                      ),
                    ),
                    SizedBox(height: 14),
                    Container(
                      width: 450,
                      height: 480,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                        ),
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );

        }
      }),
    );
  }
}

List<String> imageUrls = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE37Vpx1uCH6qswVxFohVxx6GrlnM6O1zsQ&usqp=CAU",
  // Add more image URLs here if needed
];

