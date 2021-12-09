import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Image Grid',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ImageTile(),
    );
  }
}

List<String> namePicture1 = [
  'https://th.bing.com/th/id/R33d02c67b4a6e90abe2d7a58f764edd8?rik=JYmQaMVSULpYQg&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images.jpg&ehk=BNPsuSOUR7ATZ3EpRwxx1xFl7LUbO3tYlu1wFLCBrCE%3d&risl=&pid=ImgRaw',
  'https://cdn.pixabay.com/photo/2016/12/13/22/25/bird-1905255__340.jpg',
  'https://i.redd.it/5yqkpfmuath11.jpg',
  'https://i.redd.it/31kxcny80pb51.jpg',
  'https://i.pinimg.com/474x/ea/14/87/ea1487f1130810ba11fd2b6e53d9b77a.jpg',
  'https://i.pinimg.com/474x/bb/5e/1c/bb5e1ca0c8b433aece9faff22885820a.jpg',
  'https://wallpapercave.com/wp/wp5350946.jpg',
  'https://th.bing.com/th/id/OIP.9zbwKasUyCED0h1NrNe51gHaDt?w=302&h=174&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.hd0otfz2f3_NuerwtYJZeAHaD4?w=337&h=180&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.9-fFZJEryHhfL7DQrxvRHgHaEL?w=273&h=180&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.MRcwRdV-F3qpZciZFS7d_AHaDz?w=349&h=179&c=7&o=5&dpr=1.25&pid=1.7',
  'https://media.tenor.com/images/3272aa7d57f1af61490dbce3fba7ab97/tenor.gif',
  'https://th.bing.com/th/id/OIP.jI5vaOi6gdswthMSHYLRXgHaDr?w=300&h=173&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.M1YQnxzQ1v1vxk8Dbl2PyQHaLJ?w=115&h=180&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.9mu7iE8dn0MHfXuvqgwg6wHaEK?w=318&h=180&c=7&o=5&dpr=1.25&pid=1.7',
  'https://www.seekpng.com/png/detail/17-178807_pubg-pubg-level-3-helmet.png',
  'https://th.bing.com/th/id/OIP.uQ7Rvm_GZQXEU8KlmAgT3wHaHa?w=199&h=197&c=7&o=5&dpr=1.25&pid=1.7',
  'https://th.bing.com/th/id/OIP.QhUe_jewU-8H2nOWHOiMcAHaEL?w=272&h=180&c=7&o=5&dpr=1.25&pid=1.7',
  'https://media.tenor.com/images/c297263d725a4f6d96b1408bd0b51147/tenor.gif',
  'https://th.bing.com/th/id/OIP.DfgCFX0GzgOcurVmGSBPwQHaDb?w=346&h=162&c=7&o=5&dpr=1.25&pid=1.7',
];

class ImageTile extends StatefulWidget {
  @override
  _ImageTileState createState() => _ImageTileState();
}

class _ImageTileState extends State<ImageTile> {
  double level = 1.0;
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: Row(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    IconButton(
                      hoverColor: Colors.orange,
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                  ],
                ),
              ),
            ],
          ),
          title: Row(
            children: <Widget>[
              Expanded(
                  child: Stack(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Search Here",
                        hintStyle: TextStyle(color: Colors.white30),
                        prefix: Icon(Icons.search)),
                  ),
                ],
              ))
            ],
          ),
          actions: [
            IconButton(
              hoverColor: Colors.orange,
              onPressed: () {},
              icon: Icon(Icons.add_alert),
            ),
            IconButton(
              hoverColor: Colors.orange,
              onPressed: () {},
              icon: Icon(Icons.message),
            ),
            IconButton(
              hoverColor: Colors.orange,
              onPressed: () {},
              icon: Icon(Icons.account_box),
            ),
          ]),
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: namePicture1.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: NetworkImage(namePicture1[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: HoverWidget(
                    hoverChild: Container(
                      color: Colors.black54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              HoverWidget(
                                  child: Icon(
                                    Icons.save_alt,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.save_alt,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                              SizedBox(
                                width: 10,
                              ),
                              HoverWidget(
                                  child: Icon(
                                    Icons.link,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.link,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                              SizedBox(
                                width: 10,
                              ),
                              HoverWidget(
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.share,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                              SizedBox(
                                width: 10,
                              ),
                              HoverWidget(
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onHover: (event) {},
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}
