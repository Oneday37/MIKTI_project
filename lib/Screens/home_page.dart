import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mikti/Screens/add_page.dart';
import 'package:project_mikti/Screens/call_page.dart';
import 'package:project_mikti/Screens/detail_chat_page.dart';
import 'package:project_mikti/Components/logout_alert.dart';
import 'package:project_mikti/Screens/profile_page.dart';
import 'package:project_mikti/Screens/status_page.dart';
import 'package:project_mikti/Components/switch_account_alert.dart';
import 'about_us_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonTheme = true;
  int bottombarindex = 0;

  List<Widget> bottomnavbar = <Widget>[
    ListView.custom(
        childrenDelegate:
            SliverChildBuilderDelegate(childCount: 20, (context, index) {
      return Card(
        child: ListTile(
          leading: const Icon(Icons.person),
          title: Text(
            "Person ${index + 1}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          subtitle: Text(
            "Isi Chat",
            style: GoogleFonts.poppins(fontSize: 13),
          ),
          onTap: () {
            Get.to(const DetailChatPage());
          },
        ),
      );
    })),
    const StatusPage(),
    const CallPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //DRAWER / HAMBURGER MENU ICON
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets
            .zero, //Digunaskan untuk memberikan warna penuh kepada header
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.lightBlue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: const Hero(
                    tag: "edit_profile_animation",
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/gambar_1.jpg"),
                        radius: 30),
                  ),
                  title: Text("Muhammad Zaidan",
                      style: GoogleFonts.oswald(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  subtitle: Text("+62 8xx xxxx xxxx",
                      style: GoogleFonts.oswald(fontSize: 16)),
                  trailing: const Icon(Icons.chevron_right, size: 30),
                  contentPadding: const EdgeInsets.only(left: 0),
                  onTap: () {
                    Get.to(const ProfilePage());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
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
                    const Icon(
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
            leading: const Icon(Icons.person),
            title: const Text("Account"),
            onTap: () {
              Get.to(const ProfilePage());
            },
          ),

          //NOTIFICATIONS
          ListTile(
            leading: const Icon(Icons.notifications_none),
            title: const Text("Notifications"),
            onTap: () {
              print("Widget notif berhasil ditekan");
            },
          ),

          //SETTING
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Setting"),
            onTap: () {
              print("Widget setting berhasil ditekan");
            },
          ),

          //ABOUT US
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("About Us"),
            onTap: () {
              Get.to(const DetailInfoPage());
            },
          ),
          const SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SWITCH ACCOUNT
              TextButton.icon(
                  label: const Text("Switch account"),
                  icon: const Icon(Icons.cached_rounded),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return switchAccount(context);
                        });
                  }),

              const Text("|"),

              // LOGOUT ACCOUNT
              TextButton.icon(
                  label:
                      Text("Logout", style: TextStyle(color: Colors.red[800])),
                  icon: Icon(
                    Icons.logout_rounded,
                    color: Colors.red[800],
                  ),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return logoutAccount(context);
                        });
                  })
            ],
          )
        ],
      )),

      //APP BAR / NAVIGATION BAR ATAS
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        titleSpacing: 0,
        title: Text(
          "Chattingan Kuy",
          style: GoogleFonts.oswald(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {}),
        ],
      ),

      //BODY / HALAMAN APLIKASI
      body: Center(child: bottomnavbar[bottombarindex]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlue[200],
        icon: const Icon(Icons.add),
        label: const Text("Add File"),
        onPressed: () {
          Get.to(const AddPage());
        },
      ),

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
