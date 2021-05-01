import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class GuestInavation extends StatelessWidget {
  static String id = 'GuestInavation';

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
        TextButton(
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(2018, 3, 5),
                  maxTime: DateTime(201, 6, 7), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.zh);
            },
            child: Text(
              'show date time picker (Chinese)',
              style: TextStyle(color: Colors.blue),
            ))

          ],
        ),
      ),
    );
  }
}
