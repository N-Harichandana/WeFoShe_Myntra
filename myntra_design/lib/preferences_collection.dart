import 'package:flutter/material.dart';
import 'package:myntra_design/Collection2.dart';
import 'package:myntra_design/heeramandi.dart';
import 'package:myntra_design/kdrama_screen.dart';

class PreferencesCollection extends StatefulWidget {
  const PreferencesCollection({super.key});

  @override
  State<PreferencesCollection> createState() => _PreferencesCollectionState();
}

class _PreferencesCollectionState extends State<PreferencesCollection> {
  List<String> categories = [
    "Kdrama",
    "Bollywood",
    "Hollywood",
    "Anime",
    "Your Vibe",
  ];

  int _selectedCategory =
      0; // State variable to keep track of selected category

  List<Widget> categoryWidgets = [
    KdramaScreen(),
    Collection2(),
    // Add corresponding screens for other categories
    Container(color: Colors.red), // Placeholder for Bollywood
    Container(color: Colors.blue), // Placeholder for Hollywood
    // Placeholder for Anime
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50, // Set the height of the ListView
            child: ListView.builder(
              scrollDirection:
                  Axis.horizontal, // Set the scroll direction to horizontal
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCategory = index;
                    });
                  },
                  child: Container(
                    width: 90, // Set the width of each item
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selectedCategory == index
                          ? Colors.blueAccent // Highlight selected category
                          : const Color.fromARGB(255, 234, 241, 248),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(child: categoryWidgets[_selectedCategory]),
        ],
      ),
    );
  }
}
