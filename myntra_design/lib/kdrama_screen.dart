import 'package:flutter/material.dart';

class KdramaScreen extends StatelessWidget {
  final List<Map<String, String>> categories2 = [
    {
      'name': 'Hotel del luna',
      'image':
          'https://i.pinimg.com/736x/7e/ca/48/7eca48c6cfee3366264bb338fd61d860.jpg'
    },
    {
      'name': 'Its okay not to be okay',
      'image':
          'https://thehomeground.asia/wp-content/uploads/1598517697529_its-okay-to-not-be-okay-seo-ye-ji.jpg'
    },
    {
      'name': 'Queen of Tears',
      'image': 'https://i.mydramalist.com/eYEbKq_3f.jpg'
    },
    {
      'name': 'Island',
      'image':
          'https://www.thetoughtackle.com/wp-content/uploads/2023/01/Island-Kdrama-2.jpg'
    },
    {
      'name': 'Vincenzo',
      'image':
          'https://assets.vogue.in/photos/6126002a6b9d539ed2dfd1c2/master/pass/stylish-k-drama-characters.jpg'
    },
    {
      'name': 'My demon',
      'image':
          'https://i.pinimg.com/736x/73/f0/b4/73f0b43a6b3092edda3a1338e20b6e67.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75, // Aspect ratio of each grid item
          ),
          itemCount: categories2.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.network(
                        categories2[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories2[index]['name']!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
