import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global{
  static var appColor = const Color(0xff54759E);

  static var myStyle = TextStyle(fontSize: 18);

  static bool isIos = false;
  static var elevatedButtonStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
  static var elevatedButtonStyle2 = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 13),
  );
  static var outLineButtonStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 13),
  );

  static DateTime currantDate = DateTime.now();
  static String? selectedDate;
  static String? month;

  static TimeOfDay time = TimeOfDay.now();

  static String? currantTime;
  static String? selectedTime;

  static List<Map> allContacts = [
    {
      'id': 1,
      'name': 'Tony Stark',
      'description': 'Ironman',
      'time':'12:30 PM',
      'number':'+91 99788 56746',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcqnRnHqdkUTq0kgdJzAIJHAeE0flhwJJCxw&usqp=CAU',
    },
    {
      'id': 2,
      'name': 'Steve Rogers',
      'description': 'Captain America',
      'time':'2:30 PM',
      'number':'+91 99788 56746',
      'image': 'https://img.mensxp.com/media/content/2020/May/Actors-Who-Also-Auditioned-For-Captain-America1200_5ec3bb1be7b82.jpeg',
    },
    {
      'id': 3,
      'name': 'Bruce Banner',
      'description': 'Hulk',
      'time':'3:30 PM',
      'number':'+91 99788 56746',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4l9HSIz6bWGVmoprsPYJlaaMj3qsu6d-MVA&usqp=CAU',
    },
    {
      'id': 4,
      'name': 'Natasha Romanoff',
      'description': 'Black Widow',
      'time':'5:30 PM',
      'number':'+91 99788 56746',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_lyEP3Cb-1uhxMOUGeUWeZhIZUCKPQ_eZGA&usqp=CAU',
    },
    {
      'id': 5,
      'name': 'Peter Parker',
      'description': 'Spiderman',
      'time':'4:30 PM',
      'number':'+91 99788 56746',
      'image': 'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    },
    {
      'id': 6,
      'name': 'Thor odinson',
      'description': 'Thor',
      'time':'12:30 AM',
      'number':'+91 99788 56746',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0IzZSjz700HTrAm9KH7IxHPmxZTmxxA8TLA&usqp=CAU',
    },
    {
      'id': 7,
      'name': 'Hank pym',
      'description': 'Antman',
      'time':'8:33 AM',
      'number':'+91 99788 56746',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToSli9DrwcfOBOh64s_uV2FEv2kw8ViMkSQA&usqp=CAU',
    },
    {
      "id": 8,
      "name": "T’Challa",
      "description": "Black Panther",
      "time": "yesterday",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7vSpIct28LMMWPBpqCsizs9Wlu4m6kyDz5w&usqp=CAU",
    },
    {
      "id": 9,
      "name": "Hank Pym",
      "description": "Ant-Man",
      "time": "yesterday",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToSli9DrwcfOBOh64s_uV2FEv2kw8ViMkSQA&usqp=CAU",
    },
  ];
}