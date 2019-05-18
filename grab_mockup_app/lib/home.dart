import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_mockup_app/filter.dart';
import 'package:grab_mockup_app/slide_left.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
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
      body: SingleChildScrollView(
        child: HomeBody(),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

List<ListData> dummyBestDeal = [
  ListData(
    title: 'KFC Mulyosari',
    dist: 3000,
    waitTime: 10,
    promo: 50,
    imgSrc: 'http://www.dmalldepok.com/wp-content/uploads/2017/01/kfc-hotz-chicken.jpg',
  ),
  ListData(
    title: 'MCD Mulyosari',
    dist: 3500,
    waitTime: 13,
    imgSrc: 'https://assets-pergikuliner.com/uploads/image/picture/450857/picture-1485765099.jpg',
  ),
  ListData(
    title: 'Dapoer Mantab',
    dist: 7000,
    waitTime: 30,
    promo: 50,
    imgSrc: 'https://www.philly.com/resizer/69VrOMLzfr6n1dwYv3_nchuaIag=/1400x932/smart/arc-anglerfish-arc2-prod-pmn.s3.amazonaws.com/public/NHNH2EHT35GN3EJSHZSAABZWAE.jpg',
  ),
  ListData(
    title: 'Rice Mantab',
    dist: 7000,
    waitTime: 30,
    promo: 50,
    imgSrc: 'https://cdn.sribu.com/assets/media/contest_detail/2013/1/logo-utk-rumah-makan-spesialis-nasi-goreng-50e69c063c0aa152c1000d7c/b0873bbfb5.png',
  ),
  ListData(
    title: 'Suprex',
    dist: 7000,
    waitTime: 30,
    promo: 50,
    imgSrc: 'https://t3.rbxcdn.com/af511af0ce6720150e52209fab6b247a',
  ),
  ListData(
    title: 'Geprek',
    dist: 7000,
    waitTime: 30,
    promo: 50,
    imgSrc: 'https://baksovulkanik.files.wordpress.com/2014/10/poster.jpg',
  ),
  ListData(
    title: 'Kul',
    dist: 7000,
    waitTime: 30,
    promo: 50,
    imgSrc: 'https://marketplace.canva.com/MAC4VQOhr6k/1/0/thumbnail_large-5/canva-red-and-black-bowl-japanese-restaurant-logo-MAC4VQOhr6k.jpg',
  ),
];

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
                        FlatButton(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: (){},
                          padding: EdgeInsets.all(0.0),
                          child: Stack(
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
        ListCard(
          size: 50,
          data: dummyBestDeal,
          title: 'Best Deals',
          fontSize: 14,
        ),
        ListCard(
          size: 35,
          data: dummyBestDeal,
          title: 'Favorites',
          fontSize: 12,
        ),
        ListCard(
          size: 35,
          data: dummyBestDeal,
          title: 'History',
          fontSize: 12,
        ),
        ListCard(
          size: 35,
          data: dummyBestDeal,
          title: 'Near By',
          fontSize: 12,
        ),
        ListCard(
          size: 35,
          data: dummyBestDeal,
          title: 'Promo',
          fontSize: 12,
        ),
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
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.only(left: 15),
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, SlideLeftRoute(widget: FilterScreen()));
                        },
                        padding: EdgeInsets.all(0.0),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.filter_list,
                              color: Colors.black,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10
                              ),
                            ),
                          ],
                        ),
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

class ListData{
  String title;
  double dist;
  double waitTime;
  double promo = -1;
  String imgSrc;
  ListData({this.title,
    this.dist,
    this.waitTime,
    this.promo,
    this.imgSrc,
  });
}

class ListCard extends StatefulWidget{
  final double size;
  final String title;
  final List<ListData> data;
  final double fontSize;
  const ListCard({
    this.size,
    this.data,
    this.title,
    this.fontSize,
  });
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment(-1, 0),
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 4.7 * widget.size,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: widget.data.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    elevation: 1.0,
                    margin: (index == 0) ? EdgeInsets.fromLTRB(30, 0, 15, 0) : (index == widget.data.length - 1) ? EdgeInsets.fromLTRB(15, 0, 30, 0) : EdgeInsets.fromLTRB(15, 0, 15, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Image.network(
                              widget.data[index].imgSrc,
                              fit: BoxFit.cover,
                              width: 3 * widget.size,
                              height: 3 * widget.size,

                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: widget.size/10),
                                  alignment: Alignment(1, 0),
                                  child: Text(
                                    widget.data[index].title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: widget.fontSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment(-1, 0),
                                  margin: EdgeInsets.only(top: widget.size/10),
                                  child: Text(
                                    (widget.data[index].dist/1000).toStringAsFixed(1) + ' km - ' + widget.data[index].waitTime.toStringAsFixed(0) + ' mins ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: widget.fontSize - 2,
                                    ),
                                  ),
                                ),
                                Promo(
                                  promo: widget.data[index].promo,
                                  size: widget.size,
                                  fontSize: widget.fontSize,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}

class Promo extends StatelessWidget{
  @override
  final double promo;
  final double size;
  final double fontSize;
  const Promo({this.promo, this.size, this.fontSize});
  Widget build(BuildContext context) {
    // TODO: implement build
    if (this.promo == null){
      return SizedBox(
        width: 0,
        height: 0,
      );
    }else{
      return Container(
        alignment: Alignment(-1, 0),
        margin: EdgeInsets.only(top: size/10),
        child: Text(
          'Diskon ' + this.promo.toStringAsFixed(0) + '%',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: this.fontSize - 2,
            color: Colors.green
          ),
        ),
      );
    }
  }
}
