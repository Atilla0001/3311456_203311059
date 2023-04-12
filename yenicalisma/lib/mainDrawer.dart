import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yenicalisma/info_page.dart';
import 'package:yenicalisma/profil.dart';
import 'package:yenicalisma/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
          color: Colors.brown,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 20,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Text(
                    'Atilla Arslan',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Text(
                    'infoatillaarslan@gmail.com',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person,color: Colors.brown),
            title: const Text(
              'Profil',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info,color: Colors.brown),
            title: const Text(
              'Hakkinda',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.brown),
            title: const Text(
              'Ayarlar',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back,color: Colors.brown),
            title: const Text(
              'Cikis',
              style: TextStyle(fontSize: 18),
            ),
            onTap: (){
              if(Platform.isAndroid){
                SystemNavigator.pop();
              }else {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}
