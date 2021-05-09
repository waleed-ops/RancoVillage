import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
class MaintainceRequest extends StatelessWidget {
  static String id = 'MaintainceRequest';
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;

    // TODO: give function to the checkbox
    return Scaffold(
      backgroundColor: KmainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 20.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.list,
                  size: 30.0,
                  color: KmainColor,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Maintenance ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: NlistView(),

            ),


          ),
        ],
      ),
    );
  }
}

