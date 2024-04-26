import 'package:exam/home/component/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Text(
              '${product[0]['name']}',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text('⭐⭐⭐⭐⭐'),
            Text(
              '${product[0]['price']}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              ('Product Details'),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${product[0]['description']}',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/cart');
                cartList.add(product[0]);
              },
              child: Container(
                height: 50,
                width: 350,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
