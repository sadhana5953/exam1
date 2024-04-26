import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              'Cart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 350,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      RichText(text: TextSpan(children: [TextSpan(text:'producat name\n', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18), ),
                        TextSpan(text: 'Fruits\n',style: TextStyle(color: Colors.white,fontSize: 15))
                      ]
                      ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
