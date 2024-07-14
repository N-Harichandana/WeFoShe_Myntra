import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myntra_design/interest_screen.dart';
import 'package:myntra_design/preferences_collection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InterestsScreen(),
          ),
        ),
      );
    });
  } // State variable to keep track of the current index

  List<Widget> items = [
    ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        "https://assets.vogue.in/photos/6126002a6b9d539ed2dfd1c2/master/pass/stylish-k-drama-characters.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        "https://cdn.thevoiceoffashion.com/article_images/banner2-60c1e60ace8c0.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        "https://miro.medium.com/v2/resize:fit:1400/1*XgDcqApmRCFGiz_U7gT8dw.jpeg",
        fit: BoxFit.cover,
      ),
    ),
  ];

  List<String> items2 = [
    "https://assets.vogue.in/photos/6126002a6b9d539ed2dfd1c2/master/pass/stylish-k-drama-characters.jpg",
    "https://cdn.thevoiceoffashion.com/article_images/banner2-60c1e60ace8c0.jpg",
    "https://miro.medium.com/v2/resize:fit:1400/1*XgDcqApmRCFGiz_U7gT8dw.jpeg",
  ];
  List<String> appBarTitles = [
    "Home",
    "Play",
    "Trophy",
    "Collections",
    "Hashtag",
    "Profile"
  ];
  List<Color> appBarColors = [
    Color.fromARGB(255, 255, 95, 148),
    Colors.blue,
    Colors.green,
    Colors.white,
    Colors.pink,
    Colors.purple,
  ];

  Widget buildHomePage() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Popular Trends",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              height: 300,
              aspectRatio: 4 / 3,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Monthly Picks",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150, // Set the height of the ListView
            child: ListView.builder(
              scrollDirection:
                  Axis.horizontal, // Set the scroll direction to horizontal
              itemCount: items2.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 150, // Set the width of each item
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        items2[index],
                        fit: BoxFit.cover,
                      ),
                    ));
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Grab Before it Ends",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/ad.jpg"), fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      buildHomePage(), // First page
      Container(color: Colors.blue), // Second page
      Container(color: Colors.green),
      PreferencesCollection(),
      Container(
        color: Colors.pink,
      ),
      Container(
        color: Colors.purple,
      ) // Third page
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[_currentIndex]),
        backgroundColor: appBarColors[_currentIndex],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: const <Widget>[
          Icon(Icons.home, size: 25),
          Icon(FontAwesomeIcons.play, size: 22),
          Icon(FontAwesomeIcons.trophy, size: 20),
          Icon(FontAwesomeIcons.wandMagicSparkles, size: 20),
          Icon(FontAwesomeIcons.hashtag, size: 25),
          Icon(Icons.account_circle)
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 255, 95, 148),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
