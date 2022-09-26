import 'package:flutter/material.dart';

import 'globals.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Global.allContacts.length,
        itemBuilder: (context, i) => ListTile(
          leading: CircleAvatar(backgroundImage:NetworkImage("${Global.allContacts[i]['image']}"),),
          title: Text("${Global.allContacts[i]['name']}"),
          subtitle: Text("${Global.allContacts[i]['description']}"),
          trailing: Text("${Global.allContacts[i]['time']}"),
          onTap: () {
            showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    CircleAvatar(radius: 60),
                    Text("${Global.allContacts[i]['name']}"),
                    Text("+91 99788 56746"),
                    ElevatedButton(
                        child: Text("Send Message"),
                        onPressed: () {},
                    ),
                    ElevatedButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            });
          },
        )
    );
  }
}
