import 'package:flutter/material.dart';

class HeramandiScreen extends StatelessWidget {
  const HeramandiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 202, 158, 127),
        title: Text("Myntra"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            // color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    "Did Gajagamini move your \nheart too?😁\nCheck out the trending heeramandi collection😘",
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    child: Text(
                      "Check collection ->",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),

          // Add ListView.builder here
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
                "https://assets.ajio.com/cms/AJIO/MOBILE/25042024-M-houseofethnicsxheeramandi-bottombanner.jpg"),
          )
        ],
      ),
    );
  }
}
