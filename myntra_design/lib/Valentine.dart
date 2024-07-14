import 'package:flutter/material.dart';

class ValentineScreen extends StatelessWidget {
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
                const Text(
                  "It's the month of love😉 \n click to checkout our \n valentine collection😍",
                  style: TextStyle(color: Colors.black, fontSize: 28),
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/Myntra.jpg"),
          )
        ],
      ),
    );
  }
}
