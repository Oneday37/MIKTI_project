import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                const Text("Gallery"),
                GestureDetector(
                  child: const Icon(Icons.keyboard_arrow_down),
                  onTap: () {},
                )
              ],
            ),
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: TabBar(tabs: [Text("Photos"), Text("Videos")])),
          ),
          body: LayoutBuilder(
            builder: (BuildContext content, screenSize) {
              if (screenSize.maxWidth < 700) {
                return GridView.count(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: _content(),
                );
              } else if (screenSize.maxWidth <= 1000) {
                return GridView.count(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: _content(),
                );
              } else if (screenSize.maxWidth > 1000) {
                return GridView.count(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: _content(),
                );
              } else {
                return GridView.count(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  crossAxisCount: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: _content(),
                );
              }
            },
          )),
    ));
  }

  List<Widget> _content() {
    return List<Widget>.generate(10, (index) {
      return TabBarView(children: [
        Container(
          color: Colors.grey[600],
          height: 50,
          child: const Icon(Icons.photo_size_select_actual_rounded),
        ),
        Container(
          color: Colors.grey[600],
          height: 50,
          child: const Icon(Icons.play_circle_outlined),
        )
      ]);
    });
  }
}
