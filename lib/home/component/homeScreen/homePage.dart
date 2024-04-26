import 'package:exam/home/component/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            padding: EdgeInsets.all(15),
            width: double.infinity,
            color: Colors.green,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '   Location\n',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      TextSpan(
                          text: 'Baridhare,Dhaka',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ])),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Search Your Groceries',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        )),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: List.generate(3, (index) => container()),
            ),
          ),
          Text(
            'Populer',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Wrap(children: List.generate(2, (index) => GestureDetector(onTap: (){
            Navigator.of(context).pushNamed('/detail');
          },
                    child: foodContainer(product[index]['name']))),),
        ],
      ),
    ));
  }
}

Widget foodContainer(String name) {
  return Container(
    height: 350,
    width: 185,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          height: 200,
          width: 185,
          decoration: BoxDecoration(
            color: Colors.green.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Text(name),
        Text('⭐⭐⭐⭐'),
      ],
   ),
  );
}

Widget container() {
  return Container(
    height: 150,
    width: 350,
    margin: EdgeInsets.only(top: 25, left: 20, bottom: 20),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
