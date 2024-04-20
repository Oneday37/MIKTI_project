import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mikti/Screens/add_page.dart';
import 'package:project_mikti/Screens/profile_page.dart';

import 'about_us_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonTheme = true;
  int bottombarindex = 0;

  List<Widget> bottomnavbar = [
    Text("Ini adalah Halaman Home"),
    Text("Ini adalah Halaman Status"),
    Text("Ini adalah Halaman Telepon"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets
            .zero, //Digunaskan untuk memberikan warna penuh kepada header
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      radius: 30),
                  title: Text(
                    "First Account Name",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "+62 8xx xxxx xxxx",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Icon(Icons.chevron_right, size: 30),
                  contentPadding: EdgeInsets.only(left: 0),
                  onTap: () {
                    Get.to(ProfilePage());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.nightlight_round_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                    Switch(
                        activeColor: Colors.white,
                        inactiveTrackColor: Colors.black,
                        value: buttonTheme,
                        onChanged: (value) {
                          setState(() {
                            buttonTheme = value;
                          });
                        }),
                    Icon(
                      Icons.wb_sunny,
                      size: 30,
                      color: Colors.yellow,
                    ),
                  ],
                )
              ],
            ),
          ),

          //ACCOUNT
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            onTap: () {
              Get.to(ProfilePage());
            },
          ),

          //NOTIFICATIONS
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notifications"),
            onTap: () {
              print("Widget notif berhasil ditekan");
            },
          ),

          //SETTING
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {
              print("Widget setting berhasil ditekan");
            },
          ),

          //ABOUT US
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About Us"),
            onTap: () {
              Get.to(DetailInfoPage());
            },
          ),
          SizedBox(height: 320),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SWITCH ACCOUNT
              InkWell(
                child: Row(
                  children: [
                    Icon(Icons.change_circle_outlined),
                    SizedBox(width: 5),
                    Text("Switch Account"),
                  ],
                ),
                onTap: () {
                  print("Button switch account berhasil ditekan");
                },
              ),
              Text("|"),

              // LOGOUT ACCOUNT
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.logout_sharp,
                      color: Colors.red[800],
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Logout",
                      style: TextStyle(color: Colors.red[800]),
                    ),
                  ],
                ),
                onTap: () {
                  print("Button logout berhasil ditekan");
                },
              )
            ],
          )
        ],
      )),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),

      //BODY / HALAMAN APLIKASI
      body: Center(child: bottomnavbar[bottombarindex]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddPage()));
          }),

      // NAVIGATION BAR BAWAH
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottombarindex,
        backgroundColor: Colors.lightBlue[200],
        selectedIconTheme: IconThemeData(color: Colors.blue[900]),
        selectedItemColor: Colors.blue[900],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Status"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
        onTap: (index) {
          setState(() {
            bottombarindex = index;
          });
        },
      ),
    );
  }
}
