import 'package:material_ui_eg/scenes/landingScene/drawer_view.dart';
import 'package:material_ui_eg/scenes/landingScene/landing_vm.dart';
import 'package:material_ui_eg/scenes/landingScene/tab_one.dart';
import 'package:material_ui_eg/scenes/landingScene/tab_three.dart';
import 'package:material_ui_eg/scenes/landingScene/tab_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingScene extends StatelessWidget {
  LandingScene({Key? key}) : super(key: key);

  final List<Widget> tabItems = [
    Tab(text: "Buttons"),
    Tab(text: "Inputs"),
    Tab(text: "Others"),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LandingVM>(
      create: (_) => LandingVM(),
      child: Consumer<LandingVM>(
        builder: (_, vm, __) {
          return DefaultTabController(
            length: tabItems.length,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                iconTheme: Theme.of(context).iconTheme,
                bottom: TabBar(tabs: tabItems),
                actions: [
                  Icon(Icons.settings),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    tooltip: 'Search icon',
                  ),
                ],
                title: Text('Mat3 Design System'),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: vm.selectedIndex,
                // onTap: (int index) => vm.changeTab(RootTab.values[index]),
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.map),
                    label: 'Map',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
              ),
              drawer: Drawer(child: DrawerView()),
              body: TabBarView(
                children: [
                  TabButtons(vm: vm), //BUTTONS
                  TabInputs(), //INPUTS
                  TabOthers(vm: vm), //OTHERS
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
