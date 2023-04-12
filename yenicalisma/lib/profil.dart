import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Text(
              "Profil",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic)),
          ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 70,
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 70,
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 10, top: 20, left: 20, right: 20),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.person, color: Colors.brown, size: 30.0),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Atilla Arslan',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.mail, color: Colors.brown, size: 30.0),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'infoatillarslan@gmail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.phone, color: Colors.brown, size: 30.0),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '0090 545 265 68 09',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.location_on,
                      color: Colors.brown, size: 30.0),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Altınkum/Didim',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
