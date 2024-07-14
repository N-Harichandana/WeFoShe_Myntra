import 'package:flutter/material.dart';

class Collection_Screen extends StatelessWidget {
  const Collection_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories and corresponding image URLs
    final List<Map<String, String>> categories = [
      {
        'name': 'DDLJ',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ49ifWNTvT87vmKOH5d5ElPB638SpVYon82w&s'
      },
      {
        'name': 'Aashiqui',
        'image':
            'https://m.media-amazon.com/images/M/MV5BZmIwZmVmZTAtYmExMS00OTYzLWI3ZjQtYTQyOWEwNDA3M2FmXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg'
      },
      {
        'name': 'Jab we met',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF7AIov5ZvvBp323myY_yjplI5F0AfK_hiXA&s'
      },
      {
        'name': 'kuch kuch hota hai',
        'image': 'https://images.indianexpress.com/2023/10/kkhh-featured.jpg'
      },
      {
        'name': 'two states',
        'image':
            'https://escapesofalazygirl.wordpress.com/wp-content/uploads/2014/11/2-states-poster.jpg'
      },
      {
        'name': 'Seeta raamam',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-ktXCspd-mTOcjdItDYBNz7k93sDy2QyNJA&s'
      },
      {
        'name': 'Om shanti om',
        'image':
            'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-250,h-390/et00000151-dvcegjuglb-portrait.jpg'
      },
      {
        'name': 'Mohobattein',
        'image':
            'https://www.yashrajfilms.com/images/default-source/Movies/Mohabbatein/shah-rukh-khan-and-amitabh-bachchan-in-mohabbatein4adba6a026f56f7f9f64ff0b00090313.jpg?sfvrsn=932ec9cc_0'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Valentine Collection"),
        backgroundColor: Color.fromARGB(255, 202, 158, 127),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10, // Horizontal space between grid items
          mainAxisSpacing: 15, // Vertical space between grid items
          childAspectRatio: 3 / 2, // Aspect ratio of each grid item
        ),
        padding: EdgeInsets.all(10),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  categories[index]['image']!,
                  height: 80,
                ),
                Text(
                  categories[index]['name']!,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
