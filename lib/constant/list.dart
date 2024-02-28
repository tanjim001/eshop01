
import 'package:eshop/screens/cartscreen.dart';
import 'package:eshop/screens/favoritescreen.dart';
import 'package:eshop/screens/homescreen.dart';
import 'package:eshop/screens/profilescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<IconData>iconList=[CupertinoIcons.home,CupertinoIcons.cart,CupertinoIcons.heart,CupertinoIcons.profile_circled];
  List <Widget>pages=[const HomeScreen(),const CartScreen(),const FavoriteScreen(),const ProfileScreen()];
