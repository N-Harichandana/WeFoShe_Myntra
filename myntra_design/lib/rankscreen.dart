import 'package:flutter/material.dart';

class Ranklist extends StatelessWidget {
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
      // appBar: AppBar(
      //   title: Text('Top Trendsetters of the Month'),
      //   backgroundColor: Colors.black,
      //   elevation: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: trendsetters.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
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
        ),
      ),
    );
  }
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
            color: Colors.white,
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
                color: Colors.white,
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
