import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_mockup_app/GrabColor.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GrabColor.backgroundGrey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        title: Text(
          'Checkout',
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
        child: CheckoutBody(),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

class CheckoutBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            color: Colors.red,
            child: Text('ay'),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue,
            child: Container(
              child: Text('gay'),
            ),
          ),
        ],
      ),
    );
  }
}

