import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
class Ktextfielad extends StatelessWidget {
  final  String hint;
  final IconData icon;
  String errorMSG (String str)
  {
    switch (hint){
      case 'الاسم الكريم' :return 'الاسم ما يكون فاضي ';
      case 'ايميلك يا الطيب ' :return 'الايميل ما يكون فاضي ';
      case 'الباسورد لو سمحت' :return 'الباسوورد ما يكون فاضي ';

    }
  }
  Ktextfielad({@required this.hint,@required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0),

      child: TextFormField(
        validator: (value){
          if(value.isEmpty){
            return errorMSG(hint);
          }
        },
        style: TextStyle(color: KmainColor),
        cursorColor: KmainColor,
        decoration:InputDecoration(
          prefixIcon: Icon(icon,color: KmainColor,)
          ,
          hintText: hint,
          hintTextDirection: TextDirection.rtl,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: KmainColor),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: KmainColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: KmainColor),
          ),
        ),
      ),
    );
  }
}

class ReImage extends StatelessWidget {
  const ReImage({
    Key key,
    @required this.hight,
  }) : super(key: key);

  final double hight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        height: hight * .30,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'Images/Icons/Bmart.png',
            ),

          ],
        ),
      ),
    );
  }
}
