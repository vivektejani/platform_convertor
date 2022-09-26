import 'package:flutter/material.dart';
import 'package:platform_convertor/globals.dart';

class Calls_page extends StatefulWidget {
  const Calls_page({Key? key}) : super(key: key);

  @override
  State<Calls_page> createState() => _Calls_pageState();
}

class _Calls_pageState extends State<Calls_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: Global.allContacts.length,
          itemBuilder: (context, i) => ListTile(
            leading: CircleAvatar(backgroundImage:NetworkImage("${Global.allContacts[i]['image']}"),),
            title: Text("${Global.allContacts[i]['name']}"),
            subtitle: Text(
              "${Global.allContacts[i]['description']},${Global.allContacts[i]['time']}"
            ),
            trailing: IconButton(
              icon: const Icon(
                Icons.phone,
                color: Colors.green,
              ),
              onPressed: () {},
            ),
          )
      ),
    );
  }
}
