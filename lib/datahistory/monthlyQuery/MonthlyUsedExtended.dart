import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class MonthlyUsedExtended extends StatefulWidget {
  GlobalKey<KdGaugeViewState> gaugeKey1 = GlobalKey<KdGaugeViewState>();
  GlobalKey<KdGaugeViewState> gaugeKey2 = GlobalKey<KdGaugeViewState>();
  GlobalKey<KdGaugeViewState> gaugeKey3 = GlobalKey<KdGaugeViewState>();

  @override
  _MonthlyUsedExtendedState createState() => _MonthlyUsedExtendedState();
}

class _MonthlyUsedExtendedState extends State<MonthlyUsedExtended> {
  @override
  Widget build(BuildContext context) {
    return GFCard(
      title: GFListTile(
        avatar: Image.asset('assets/images/air-conditioner.png', color: Colors.white, scale: 15,),
        title: Text('เครื่องปรับอากาศ'),
      ),
      content: Container(
        child: Column(
          children: <Widget>[
            _airconColumn(imageIcon: Image.asset('assets/images/one.png', scale: 8,), gaugeKeyAll: widget.gaugeKey1),
            _airconColumn(imageIcon: Image.asset('assets/images/two.png', scale: 8,), gaugeKeyAll: widget.gaugeKey2),
            _airconColumn(imageIcon: Image.asset('assets/images/three.png', scale: 8,), gaugeKeyAll: widget.gaugeKey3),
          ],
        ),
      ),
    );
  }

  Widget _airconColumn({@required Widget imageIcon, @required GlobalKey<KdGaugeViewState> gaugeKeyAll}){
    return Row(
      children: [
        Expanded(
          child: Center(child: imageIcon),
        ),
        Expanded(
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              child: KdGaugeView(
                key: gaugeKeyAll,
                innerCirclePadding: 15,
                speed: 0,
                minSpeed: 0,
                maxSpeed: 500,
                unitOfMeasurement: "หน่วย",
                speedTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                unitOfMeasurementTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                minMaxTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
                animate: true,
                alertSpeedArray: [100, 200, 300],
                alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
                duration: Duration(seconds: 3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


