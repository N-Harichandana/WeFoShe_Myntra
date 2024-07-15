import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({Key? key}) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  final List<Map<String, String>> trendsetters = [
    {
      'rank': '1',
      'username': '@FashionQueen',
      'earnings': '\$1,000,000',
      'image': 'https://example.com/image1.jpg',
    },
    {
      'rank': '2',
      'username': '@TrendyChic',
      'earnings': '\$983,000',
      'image': 'https://example.com/image2.jpg',
    },
    {
      'rank': '3',
      'username': '@StyleMaster',
      'earnings': '\$717,210',
      'image': 'https://example.com/image3.jpg',
    },
    {
      'rank': '4',
      'username': '@StyleIcon',
      'earnings': '\$402,815',
      'image': 'https://example.com/image4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for fashion challenge, ...',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_alt),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildChallengeCard(
                  'https://media.istockphoto.com/id/480817724/photo/posing-girl.jpg?s=612x612&w=0&k=20&c=FhbhebERG_EsM4lLo7RF-IQtw61qDOmptfyiHjJf7-8=',
                  'Runway Challenge',
                  'Streetwear, haute couture',
                  true,
                );
              },
              childCount: 4,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Top Trendsetters',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      // Text("Top Trendsetters of the Month",style: TextStyle(fontSize: 28),),
                      SizedBox(
                        height: 20,
                      ),
                      _buildTrendsetterCard(
                        rank: trendsetters[index]['rank']!,
                        username: trendsetters[index]['username']!,
                        earnings: trendsetters[index]['earnings']!,
                        imageUrl: trendsetters[index]['image']!,
                      ),
                      Divider(color: Colors.grey),
                    ],
                  );
                },
                childCount: trendsetters.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChallengeCard(
    String imageUrl,
    String title,
    String subtitle,
    bool isJoinable,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.network(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (isJoinable)
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Join Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 95, 148),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendsetterCard({
    required String rank,
    required String username,
    required String earnings,
    required String imageUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$rank.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                earnings,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
