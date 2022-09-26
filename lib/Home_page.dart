import 'package:flutter/material.dart';
import 'package:platform_convertor/globals.dart';

import 'calls_page.dart';
import 'chats_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int initialTabBarIndex = 0;
  int initialBottomNavigationBarIndex = 0;

  late TabController tabController;
  PageController pageController = PageController();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Platform Convertor"),
        bottom: TabBar(
          controller: tabController,
          onTap: (val) {
            setState(() {
              tabController.animateTo(val);
              pageController.animateToPage(
                val,
                duration: const Duration(microseconds: 300),
                curve: Curves.easeInOut,
              );
            });
          },
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(icon: Icon(Icons.chat), text: "CHATS"),
            Tab(icon: Icon(Icons.phone), text: "CALLS"),
            Tab(icon: Icon(Icons.settings), text: "SETTINGS"),
          ],
        ),
        actions: [
          Switch(
            value: Global.isIos,
            inactiveThumbImage: const NetworkImage(
                "https://www.freepnglogos.com/uploads/android-logo-png/android-logo-powerful-mobile-apps-for-those-with-disabilities-3.png"),
            onChanged: (val) {
              setState(() {
                Global.isIos = val;
              });
              // scaffoldKey.currentState!.showBottomSheet((context) =>  );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blueGrey,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 65),
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/111499360?v=4"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Vivek Tejani",
                      style: Global.myStyle,
                    ),
                    const Text(
                      "+91 99788 56746",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.people, color: Colors.black),
                      title: Text(
                        "New Group",
                        style: Global.myStyle,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.person, color: Colors.black),
                      title: Text(
                        "New Contact",
                        style: Global.myStyle,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone, color: Colors.black),
                      title: Text(
                        "Calls",
                        style: Global.myStyle,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.bookmark, color: Colors.black),
                      title: Text(
                        "Saved Messages",
                        style: Global.myStyle,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings, color: Colors.black),
                      title: Text(
                        "Settings",
                        style: Global.myStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          ChatsPage(),
          Calls_page(),
          SettingsPage(),
        ],
      ),
    );
  }
}
