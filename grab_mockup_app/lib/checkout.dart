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
      body: CheckoutBody(),
    );
  }
}

class CheckoutBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopSection(
            data: topSection,
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              color: GrabColor.white,
              child: Container(
                width: MediaQuery.of(context).size.width,
//                color: GrabColor.blue,
                margin: EdgeInsets.all(10),
                child: Card(
                  color: GrabColor.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Total',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Rp35.000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: FlatButton(
                          onPressed: (){},
                          color: GrabColor.green,
                          shape: StadiumBorder(),
                          child: Text(
                            'Order'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget{
  @override
  final Widget child;
  final String title;
  const Section({
    this.child,
    this.title
  });
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          this.child,
        ],
      ),
    );
  }
}

List<Menu> OrderDummy = [
  Menu(
    judul: 'Nasi Goreng Jawa',
    harga: 20000,
    quantity: 2,
  ),
  Menu(
    judul: 'Mie Goreng Kalimantan',
    harga: 30000,
    quantity: 1,
    notes: 'Pedas'
  ),
  Menu(
    judul: 'Soto Ayam',
    harga: 15000,
    quantity: 1,
  ),
  Menu(
    judul: 'Es Teh',
    harga: 5000,
    quantity: 2,
    notes: '1 tawar 1 manis'
  ),
];

class Menu {
  int quantity;
  String judul;
  String notes;
  int harga;
  Menu({
    this.quantity,
    this.judul,
    this.notes,
    this.harga,
  });
}

List<Widget> topSection = [
  Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.all(15),
    color: GrabColor.white,
    child: Section(
      title: 'Deliver To',
      child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Teknik Informatika Institut Teknologi Sepuluh Nopember',
                            style: TextStyle(
                              fontSize: 18,
                              color: GrabColor.blue,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Change',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                          color: Colors.grey[400],
                          fontSize: 15
                      ),
                      hintText: "Add notes to driver",
                      fillColor: GrabColor.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: GrabColor.green),
                      )
                  ),
                ),
              ),
            ],
          )
      ),
    ),
  ),
  Summary(
    orderan: OrderDummy,
  ),
  Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.all(15),
    color: GrabColor.white,
    child: Section(
      title: 'Payments',
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.print,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Cash',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.print,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'No Promo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
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
    ),
  ),
];

class TopSection extends StatelessWidget{
  @override
  final List<Widget> data;
  const TopSection({
    this.data
  });
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      child: ListView.builder(
        physics: PageScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.data.length,
        itemBuilder: (BuildContext context, int index){
          return this.data[index];
        },
      )
    );
  }
}

class Summary extends StatefulWidget{
  final List<Menu> orderan;
  const Summary({
    this.orderan,
  });
  _Summary createState() => _Summary();
}

class _Summary extends State<Summary>{
  @override
  int totalHarga;
  List<Menu> fixOrder;
  void initState(){
    super.initState();
    this.totalHarga = 0;
    this.fixOrder = widget.orderan;
    for (int i = 0; i < this.fixOrder.length; i++){
      this.totalHarga = this.totalHarga + (this.fixOrder[i].harga * this.fixOrder[i].quantity);
    }
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      color: GrabColor.white,
      child: Section(
        title: 'Summary',
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              IgnorePointer(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: this.fixOrder.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      margin: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: GrabColor.backgroundGrey,
                              )
                          )
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        this.fixOrder[index].quantity.toString(),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        side: BorderSide(
                                            color: GrabColor.backgroundGrey
                                        )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: GrabColor.blue,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
//                                color: Colors.blue,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        this.fixOrder[index].judul,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                          (this.fixOrder[index].notes != null) ? this.fixOrder[index].notes : '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                      (this.fixOrder[index].harga * this.fixOrder[index].quantity).toString()
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    );
                  },
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Subtotal',
                          ),
                          Text(
                            this.totalHarga.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Taxes'),
                          Text(
                            '0',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Delivery Fee'),
                          Text(
                            '6000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
