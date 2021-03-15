import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
class Ktextfielad extends StatelessWidget {
  final  String hint;
  final IconData icon;
  Ktextfielad({@required this.hint,@required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0),

      child: TextField(
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
        ),
      ),
    );
  }
}