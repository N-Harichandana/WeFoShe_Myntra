import 'package:flutter/material.dart';

class Collection2 extends StatelessWidget {
  final List<Map<String, String>> categories2 = [
    {
      'name': 'Chikanakari',
      'image':
          'https://assets.ajio.com/cms/AJIO/MOBILE/M-HOUSEOFETHNICS-240424-SHOPBYCRAFT-P2-CHIKANKARI.gif'
    },
    {
      'name': 'Brocade Sharara Set',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20240426/REbE/662ab25505ac7d77bb2d753d/-473Wx593H-467265483-black-MODEL6.jpg'
    },
    {
      'name': 'Embroidered Sharara set',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20240502/0nc2/6633217005ac7d77bb385319/-473Wx593H-467265502-cream-MODEL5.jpg'
    },
    {
      'name': 'Zardozi',
      'image':
          'https://assets.ajio.com/cms/AJIO/MOBILE/M-HOUSEOFETHNICS-240424-SHOPBYCRAFT-P1-ZARDOZI.jpg'
    },
    {
      'name': 'Flared Kurta set',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20240501/IP7u/6632824016fd2c6e6adf3e70/-473Wx593H-467289919-green-MODEL.jpg'
    },
    {
      'name': 'Ethnic collection',
      'image': 'https://static.toiimg.com/photo/109629681/109629681.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Heeramandi Collection"),
      //   backgroundColor: Color.fromARGB(255, 202, 158, 127),
      // ),
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
