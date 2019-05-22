import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          TopSection(),
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
                                'Total'.toUpperCase(),
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

class TopSection extends StatelessWidget{
  @override
  final List<Widget> data;
  const TopSection({
    this.data
  });
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: ListView(
              physics: PageScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
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
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/map');
                                      },
                                      child: Container(
                                        child: Text(
                                          'Change',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
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
                                FlatButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/cash');
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.moneyBill,
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 20),
                                              child: Text(
                                                'Cash',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14
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
                                ),
                                FlatButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/cash');
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.ticketAlt,
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 20),
                                              child: Text(
                                                'No Promo',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),

      ],
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

  updateHargaTotal(){
    print(this.totalHarga);
    setState(() {
      this.totalHarga = 0;
      for (int i = 0; i < this.fixOrder.length; i++){
        this.totalHarga = this.totalHarga + (this.fixOrder[i].harga * this.fixOrder[i].quantity);
      }
    });
    print(this.totalHarga);
  }

  updateMenu(int index, Menu cur){
    setState(() {
      if (cur.quantity == 0){
        this.fixOrder.removeAt(index);
      }else{
        this.fixOrder[index] = cur;
      }
    });
    updateHargaTotal();
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
             ListView.builder(
               physics: NeverScrollableScrollPhysics(),
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
                              GestureDetector(
                                onTap: (){
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialog(
                                          callback: updateMenu,
                                          index: index,
                                          orderMenu: this.fixOrder[index],
                                        );
                                      }
                                  );
                                },
                                child: Container(
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
              Container(
                margin: EdgeInsets.only(top: 10),
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

class CustomDialog extends StatefulWidget{
  final Function callback;
  final Menu orderMenu;
  final int index;
  const CustomDialog({
    this.callback,
    this.orderMenu,
    this.index,
  });
  _CustomDialog createState() => _CustomDialog();
}

class _CustomDialog extends State<CustomDialog>{
  @override
  Menu _orderMenu;
  void initState(){
    this._orderMenu = widget.orderMenu;
    super.initState();
  }
  incrementQuantity(){
    setState(() {
      this._orderMenu.quantity ++;
    });
  }
  decrementQuantity(){
    setState(() {
      if (this._orderMenu.quantity > 0){
        this._orderMenu.quantity--;
      }
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 1,
        backgroundColor: GrabColor.white,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        this._orderMenu.judul,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (text){
                          setState(() {
                            this._orderMenu.notes = text;
                          });
                        },
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
                          hintText: "Special Instruction",
                          fillColor: GrabColor.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: GrabColor.green),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            color: Colors.white,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed: decrementQuantity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                side: BorderSide(
                                    color: GrabColor.backgroundGrey
                                )
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                this._orderMenu.quantity.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
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
                          FlatButton(
                            onPressed: incrementQuantity,
                            color: Colors.white,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    child: FlatButton(
                      onPressed: (){
                        widget.callback(widget.index, this._orderMenu);
                        Navigator.pop(context);
                      },
                      color: (this._orderMenu.quantity == 0) ? Colors.red : GrabColor.green,
                      shape: StadiumBorder(),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: (this._orderMenu.quantity == 0) ? Text(
                              'Remove',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ) : Text(
                              'Update',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
