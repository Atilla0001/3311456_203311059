import 'package:flutter/material.dart';
import 'package:yenicalisma/mainDrawer.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String input = "";
  List not = [];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
           elevation: 25.0,
          backgroundColor: Colors.brown,
          title: const Text("NOTLARIM",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic),
          ),
        ),
        drawer: const MainDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.brown,
          child: const Icon(Icons.add_comment),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.brown,
                    title: const Text('YENI NOT',style: TextStyle(color: Colors.white),),
                    content: TextField(
                      decoration: const InputDecoration(hintText: 'NOT',),
                      onChanged: (String value) {
                        input = value;
                      },
                    ),
                    actions: [
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              not.add(input);
                            });
                          },
                          child: const Text("Yeni Not",style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  );
                });
          },

        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: ListView.builder(
              itemCount: not.length,
              itemBuilder: (BuildContext context,int index) {
              return Dismissible(key: Key(not[index]), child: Card(
                elevation: 4,
                margin: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  title: Text(not[index],
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red,), onPressed: () {
                      setState(() {
                        not.removeAt(index);
                      });
                  },
                  ),
                ),
              ));
            }
          ),
        ),
      ),
    );
  }
}
