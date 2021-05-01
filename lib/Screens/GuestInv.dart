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
            SizedBox(
              height: hight * .09,
            ),
            // ignore: deprecated_member_use
            FlatButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      minTime: DateTime.now(),
                      maxTime: DateTime(2111, 6, 7),
                  //     {
                  //   print('change $date');
                  // }, onConfirm: (date) {
                  //   print('confirm $date');
                  // },
                  currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'Pick A date',
                  style: TextStyle(color: Colors.blue),
                ))

          ],
        ),
      ),
    );
  }
}
