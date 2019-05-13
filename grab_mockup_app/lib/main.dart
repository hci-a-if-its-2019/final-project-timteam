import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GrabFood',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.arrow_back_ios, color: Colors.black)
            ),
            title: Text(
              'GrabFood',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              Container(
                margin: EdgeInsets.all(18),
                width: 60,
                child: FlatButton(
                  child: Text(
                    '50000',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  color: Colors.grey,
                  shape: StadiumBorder(),
                  onPressed: (){},
                ),
              )
            ],
//          title: const Text('Test', style: TextStyle(color: Colors.blue),),
            backgroundColor: Colors.white,
            elevation: 1.0,
          ),
          body: HomeBody(),
        )
    ) ;
  }
}

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Container(
            child: Material(
              elevation: 1.0,
              color: Colors.white,
              shadowColor: Colors.black,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Deliver To',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.map,
                              color: Colors.red,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          ),
                          Text(
                            'Teknik Informatika ITS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        child: Icon(
                          Icons.chevron_right
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 15,
                    color: Color.fromRGBO(225, 225, 225, 1),
                  ),
                ],
              )
            )
          )
        ),
        SearchBar(),
      ],
    );
  }
}

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Text(
                          'Find a dish or restaurant',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                    color: Color.fromRGBO(235, 235, 235, 1),
                    shape: StadiumBorder(),
                    onPressed: (){},
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        ),
                        onPressed: null,
                        tooltip: 'Filter',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
