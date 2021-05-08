import 'package:flutter/material.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/user/GuestInv.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/user/maintainceReq.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
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
            ReButton(hight: hight,text: 'Guest Invitation ',navigator: GuestInavation.id,colour: Colors.white),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'maintenance request',colour: Colors.white,navigator: MaintainceRequest.id,),
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
