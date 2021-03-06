import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';

import 'GuestInv.dart';
import 'maintainceReq.dart';
class ResidentsPage extends StatelessWidget {
  static String id = 'ResidentsPage';

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: KmainColor,
      body: Container(
        child: ListView(
          children: [
            ReImage(hight: hight),
            SizedBox(
              height: hight * .09,
            ),
            ReButton(hight: hight,text: 'Guest Invitation ',navigator: GuestInavation.id,),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'maintenance request',navigator: MaintainceRequest.id,),
            // SizedBox(
            //   height: hight * .01,
            // ),
            // ReButton(hight: hight,text: 'maintenance'),
          ],
        ),
      ),

    );
  }
}
