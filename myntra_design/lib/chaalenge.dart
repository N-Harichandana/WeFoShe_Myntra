import 'package:flutter/material.dart';
import 'package:myntra_design/challenge_screen.dart';

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard(
                    context,
                    '"Style Challenge: Accepted!"',
                    // 'Join now!',
                    'Join Challenge',
                    'https://th.bing.com/th/id/R.2d34139e0bf9e4a992447dade87aa94f?rik=IoYUdQQ9K5uCaA&riu=http%3a%2f%2fgetdrawings.com%2fimg%2fwoman-silhouette-outline-19.jpg&ehk=X8r%2fkhyuKO6w5%2fDEsgScCuUTJdwe036IFuHF2%2fVmzyE%3d&risl=&pid=ImgRaw&r=0',
                  ),
                  SizedBox(width: 20),
                  _buildCard(
                    context,
                    '"Unleash Your Style!"',
                    // 'Limited',
                    'Join Challenge',
                    'https://media.istockphoto.com/id/480817724/photo/posing-girl.jpg?s=612x612&w=0&k=20&c=FhbhebERG_EsM4lLo7RF-IQtw61qDOmptfyiHjJf7-8=',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(
    BuildContext context, String title, String buttonText, String imageUrl) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Container(
      // height: MediaQuery.of(context).size.height * 0.25,
      // height: 50,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.network(
                      imageUrl,
                      width: 150,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 8,
              //   right: 8,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //     child: Icon(
              //       Icons.favorite,
              //       color: Colors.red,
              //     ),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // Text(subtitle),
                // Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ChallengeScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 95, 148),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
