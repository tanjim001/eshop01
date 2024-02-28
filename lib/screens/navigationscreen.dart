import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eshop/constant/colors.dart';
import 'package:eshop/constant/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _pageindex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      floatingActionButton: SafeArea(child: FloatingActionButton(onPressed: (){},shape:const CircleBorder() ,backgroundColor: redorange,foregroundColor: const Color.fromARGB(255, 248, 248, 248),child:  const Icon(Icons.qr_code,size: 30,),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(index:_pageindex ,children: pages,),
      bottomNavigationBar:  AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: _pageindex,
      inactiveColor: Colors.black.withOpacity(0.5),
      activeColor: redorange,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 20,
      rightCornerRadius: 20,
      elevation: 10,
      iconSize: 25,
      onTap: (index) => setState(() => _pageindex = index),
      //other params
   ),
    ));
  }
}
