import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart';
import 'package:grab_mockup_app/GrabColor.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GrabColor.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        title: Text(
          'Filter Search',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.check, color: GrabColor.green,),
          )
        ],
//          title: const Text('Test', style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: FilterBody(),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

class FilterBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      'Show',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Near By',
                        width: MediaQuery.of(context).size.width * 0.4,
                        fontSize: 16,
                      ),
                      CustomButton(
                        text: 'Recommended',
                        width: MediaQuery.of(context).size.width * 0.4,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Favorites',
                        width: MediaQuery.of(context).size.width * 0.4,
                        fontSize: 16,
                      ),
                      CustomButton(
                        text: 'Promo',
                        width: MediaQuery.of(context).size.width * 0.4,
                        fontSize: 16,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      'Prices',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: PriceSection(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Indonesian',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Japanese',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Western',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'FastFood',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Fried Rice',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButton(
                        text: 'Noodles',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        fontSize: 20,
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

class CustomButton extends StatefulWidget{
  final String text;
  final double width;
  final double fontSize;
  final double height;
  final bool state;
  final bool onPressed;
  const CustomButton({
    this.text,
    this.width,
    this.fontSize,
    this.height,
    this.state,
    this.onPressed,
  });
  _CustomButton createState () => _CustomButton(
    state: (this.state == null) ? false : this.state,
    onPressed: (this.onPressed == null) ? false : this.onPressed,
  );
}

class _CustomButton extends State<CustomButton>{
  @override
  bool state = null;
  bool onPressed = null;
  _CustomButton({this.state, this.onPressed});
  checkStatus(){
    if (this.state == null) this.state = false;
    if (this.onPressed == null) this.onPressed = false;
    print(this.state);
  }
  void didUpdateWidget(Widget oldWidget){
    this.state = (widget.state == null) ? false : widget.state;
    super.didUpdateWidget(oldWidget);
  }
  setStateBaru(){
    setState(() {
      this.state = !this.state;
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    this.checkStatus();
    if (this.state){
      return Container(
        width: widget.width,
        height: widget.height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: FlatButton(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: widget.fontSize,
            ),
          ),
          color: GrabColor.green,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(0),
          onPressed: (this.onPressed) ? (){} : setStateBaru,
        ),
      );
    }else{
      return Container(
        width: widget.width,
        height: widget.height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: OutlineButton(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: widget.fontSize,
            ),
          ),
          borderSide: BorderSide(
            color: GrabColor.green,
          ),
          color: Colors.white,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(0),
          onPressed: (this.onPressed) ? (){} : setStateBaru,
        ),
      );
    }
  }
}

class RangeSliderData {
  double min;
  double max;
  double lowerValue;
  double upperValue;
  int divisions;
  bool showValueIndicator;
  int valueIndicatorMaxDecimals;
  bool forceValueIndicator;
  Color overlayColor;
  Color activeTrackColor;
  Color inactiveTrackColor;
  Color thumbColor;
  Color valueIndicatorColor;
  Color activeTickMarkColor;

  static const Color defaultActiveTrackColor = const Color(0xFF0175c2);
  static const Color defaultInactiveTrackColor = const Color(0x3d0175c2);
  static const Color defaultActiveTickMarkColor = const Color(0x8a0175c2);
  static const Color defaultThumbColor = const Color(0xFF0175c2);
  static const Color defaultValueIndicatorColor = const Color(0xFF0175c2);
  static const Color defaultOverlayColor = const Color(0x290175c2);

  RangeSliderData({
    this.min,
    this.max,
    this.lowerValue,
    this.upperValue,
    this.divisions,
    this.showValueIndicator: true,
    this.valueIndicatorMaxDecimals: 1,
    this.forceValueIndicator: false,
    this.overlayColor: defaultOverlayColor,
    this.activeTrackColor: defaultActiveTrackColor,
    this.inactiveTrackColor: defaultInactiveTrackColor,
    this.thumbColor: defaultThumbColor,
    this.valueIndicatorColor: defaultValueIndicatorColor,
    this.activeTickMarkColor: defaultActiveTickMarkColor,
  });

  // Returns the values in text format, with the number
  // of decimals, limited to the valueIndicatedMaxDecimals
  //
  String get lowerValueText =>
      lowerValue.toStringAsFixed(valueIndicatorMaxDecimals);
  String get upperValueText =>
      upperValue.toStringAsFixed(valueIndicatorMaxDecimals);

  // Builds a RangeSlider and customizes the theme
  // based on parameters
  //
  Widget build(BuildContext context, RangeSliderCallback callback) {
    return new Container(
      width: double.infinity,
      child: new Row(
        children: <Widget>[
          new Container(
            constraints: new BoxConstraints(
              minWidth: 40.0,
              maxWidth: 40.0,
            ),
//            child: new Text(
//                lowerValueText,
//              style: TextStyle(
//                fontSize: 10
//              ),
//            ),
          ),
          new Expanded(
            child: new SliderTheme(
              // Customization of the SliderTheme
              // based on individual definitions
              // (see rangeSliders in _RangeSliderSampleState)
              data: SliderTheme.of(context).copyWith(
                overlayColor: overlayColor,
                activeTickMarkColor: activeTickMarkColor,
                activeTrackColor: activeTrackColor,
                inactiveTrackColor: inactiveTrackColor,
                thumbColor: thumbColor,
                valueIndicatorColor: valueIndicatorColor,
                showValueIndicator: showValueIndicator
                    ? ShowValueIndicator.always
                    : ShowValueIndicator.onlyForDiscrete,
              ),
              child: new RangeSlider(
                min: min,
                max: max,
                lowerValue: lowerValue,
                upperValue: upperValue,
                divisions: divisions,
                showValueIndicator: showValueIndicator,
                valueIndicatorMaxDecimals: valueIndicatorMaxDecimals,
                onChanged: (double lower, double upper) {
                  // call
                  callback(lower, upper);
                },
              ),
            ),
          ),
          new Container(
            constraints: new BoxConstraints(
              minWidth: 40.0,
              maxWidth: 40.0,
            ),
//            child: new Text(
//                upperValueText,
//                style: TextStyle(
//                  fontSize: 10
//                ),
//            ),
          ),
        ],
      ),
    );
  }
}

class GreenRangeSlider extends StatefulWidget{
  _GreenRangeSlider createState () => _GreenRangeSlider();
}

class _GreenRangeSlider extends State<GreenRangeSlider>{
  @override
  double _lowerValue = 0;
  double _upperValue = 30000;
  double _min = 0;
  double _max = 150000;
  int _division = 150;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30),
//      child: RangeSlider(
//          min: 0.0,
//          max: 300000.0,
//          lowerValue: _lowerValue,
//          upperValue: _upperValue,
//          divisions: this.division,
//          showValueIndicator: true,
//          valueIndicatorFormatter: (int index, double value){
//            String twoDecimals = 'Rp. '+value.toStringAsFixed(0);
//            return '$twoDecimals';
//          },
//          onChanged: (double newLowerValue, double newUpperValue) {
//            setState(() {
//              _lowerValue = newLowerValue;
//              _upperValue = newUpperValue;
//            });
//          },
//      ),
    child: RangeSliderData(
          min: 0,
          max: 300000,
          divisions: _division,
          lowerValue: _lowerValue,
          upperValue: _upperValue,
          showValueIndicator: true,
          valueIndicatorColor: Color.fromRGBO(0, 177, 64, 1),
          activeTickMarkColor: Color.fromRGBO(0, 150, 64, 0.8),
          thumbColor: Color.fromRGBO(0, 177, 64, 1),
          valueIndicatorMaxDecimals: 0,
        ).build(context, (double lower, double upper) {
        // adapt the RangeSlider lowerValue and upperValue
        setState(() {
          _lowerValue = lower;
          _upperValue = upper;
        });
      }),
    );
  }
}

class PriceSection extends StatefulWidget{
  const PriceSection();
  _PriceSection createState () => _PriceSection();
}

class _PriceSection extends State<PriceSection>{
  @override
  bool _state = false;
  bool _state2 = false;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                setState(() {
//                  print(this._state);
                  this._state = !this._state;
                  if (this._state && this._state2){
                    this._state2 = false;
                  }
//                  print(this._state);
                });
              },
              child: IgnorePointer(
                child: CustomButton(
                  text: 'Lowest',
                  width: MediaQuery.of(context).size.width * 0.4,
                  fontSize: 16,
                  state: this._state,
                  onPressed: true,
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                setState(() {
//                    print(this._state2);
                    this._state2 = !this._state2;
                    if (this._state && this._state2){
                      this._state = false;
                    }
                });
              },
              child: IgnorePointer(
                child: CustomButton(
                  text: 'Highest',
                  width: MediaQuery.of(context).size.width * 0.4,
                  fontSize: 16,
                  state: this._state2,
                  onPressed: true,
                ),
              ),
            ),
          ],
        ),
        GreenRangeSlider()
      ],
    );
  }
}