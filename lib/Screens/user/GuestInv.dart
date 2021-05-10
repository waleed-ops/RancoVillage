import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class GuestInavation extends StatelessWidget {
  static String id = 'GuestInavation';
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: KmainColor,
      body: Form(
        child: ListView(
          children: [
            SizedBox(height: hight * .11),
            Ktextfielad(
              hint: 'Guest Name ',
              icon: Icons.person,
            ),

            Ktextfielad(
              hint: 'Nationality ',
              icon: Icons.flag,
            ),
            Ktextfielad(
              hint: 'ID / Iqama ',
              icon: Icons.account_box_sharp,
            ),
            Ktextfielad(
              hint: 'Unit Number ',
              icon: Icons.home,
            ),
            // SizedBox(
            //   height: hight * .0,
            // ),
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.all(20.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  height: hight * .06,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),),
                  onPressed: () {
                    DatePicker.showDateTimePicker(context,
                        minTime: DateTime.now(),
                        maxTime: DateTime.utc(2111,12,31,),
                    //     {
                    //   print('change $date');
                    // }, onConfirm: (date) {
                    //   print('confirm $date');
                    // },
                    currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Text(
                    'Pick A date',
                    style: TextStyle(fontSize: 22,color:KmainColor),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ReButton(hight: hight,text: 'Submit ',),
            ),

          ],
        ),
      ),
    );
  }
}
