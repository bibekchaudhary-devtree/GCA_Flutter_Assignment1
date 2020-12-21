import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mews Feeds",
      theme: ThemeData(fontFamily: "Open Sans"),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff3b5998),
            title: Text("News Feed"),
          ),
          body: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) => CardItem(),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 350.0,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(),
              title: Text("Flutter Training Course"),
              subtitle: Text("Sat Dec 19 2020"),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/12/26/15/16/christmas-4720604_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "Like",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "Comment",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
