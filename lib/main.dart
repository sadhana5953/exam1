import 'package:exam/home/component/cartScreen/cart.dart';
import 'package:exam/home/component/detailScreen/detailScreen.dart';
import 'package:exam/home/component/homeScreen/homePage.dart';
import 'package:flutter/material.dart';
void main()
{
  return runApp(exam());
}
class exam extends StatelessWidget {
  const exam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homePage(),
        '/detail':(context) => detailPage(),
        '/cart':(context) => cartScreen(),
      },
    );
  }
}
