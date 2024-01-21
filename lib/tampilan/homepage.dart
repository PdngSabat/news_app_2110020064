import 'package:flutter/material.dart';
import 'package:news_app_2110020064/pages/otomotif.dart';
import 'package:news_app_2110020064/pages/profile.dart';
import 'package:news_app_2110020064/pages/sports.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heading"),
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.reorder),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text("News App", 
          style: TextStyle(color: Colors.teal, fontSize: 26, fontWeight: FontWeight.bold),
          ),
         const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Otomotif()),
                          ),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.black,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      width: 170,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.garage, 
                          size: 120,
                          color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                        "Automotive",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                ],
              ),
              const SizedBox(width: 30,),
              Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sports()),
                          ),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.black,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      width: 170,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.sports_basketball_outlined, 
                          size: 120, 
                          color: Colors.orange,),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                        "Sport",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          ),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.black,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      width: 170,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.account_circle, 
                          size: 120,
                          color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30,),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const Icon(Icons.payment, 
                      size: 120, 
                      color: Colors.transparent,),
                      const Text(''),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          //ElevatedButton(onPressed: () {}, child: const Text('Go To Page 2'))
        ],
      ),
    );
  }
}