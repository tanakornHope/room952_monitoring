import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

// ignore: must_be_immutable
class YearlyUsedSummary extends StatefulWidget {
  GlobalKey<KdGaugeViewState> gaugeKey = GlobalKey<KdGaugeViewState>();

  @override
  _YearlyUsedSummaryState createState() => _YearlyUsedSummaryState();
}

class _YearlyUsedSummaryState extends State<YearlyUsedSummary> {


  @override
  Widget build(BuildContext context) {
    return GFCard(
      title: GFListTile(
        avatar: FaIcon(FontAwesomeIcons.plug),
        title: Text('ยอดรวมการใช้พลังงาน'),
      ),
      content: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(10),
        child: KdGaugeView(
          key: widget.gaugeKey,
          speed: 0,
          minSpeed: 0,
          maxSpeed: 18000,
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
          alertSpeedArray: [8000, 13000, 17000],
          alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
          duration: Duration(seconds: 3),
        ),
      ),
    );
  }
}
