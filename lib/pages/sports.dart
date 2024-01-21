import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2110020064/components/customListTile.dart';
import 'package:news_app_2110020064/model/article_model.dart';
import 'package:news_app_2110020064/services/api_service.dart';
import 'package:news_app_2110020064/tampilan/homepage.dart';

class Sports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()),
            );
          },
        ),
          title: Text("News App", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot)

      {if (snapshot.hasData) {
        List<Article> articles = snapshot.data;
        return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) =>
                customListTile(articles[index], context));

      }
      return Center(
        child: CircularProgressIndicator(),
      );
    },
  ),
);
}
}