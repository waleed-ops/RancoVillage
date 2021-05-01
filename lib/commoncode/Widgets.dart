import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';

class Ktextfielad extends StatelessWidget {
  final  String hint;
  final IconData icon;
  final Function onclick;
  String errorMSG (String str)
  {
    switch (hint){
      case 'Name' :return 'user name is empty ! ';
      case 'Email ' :return 'Email is Empty!';
      case 'Password' :return 'Password is empty!';

    }
  }
  Ktextfielad({@required this.onclick,@required this.hint,@required this.icon});

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
        onSaved: onclick,
        obscureText: hint=='Password'?true:false,
keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: KmainColor),
        cursorColor: KmainColor,
        decoration:InputDecoration(
          prefixIcon: Icon(icon,color: KmainColor,)
          ,
          hintText: hint,
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
class ReButton extends StatelessWidget {
  final String text;
  final double hight;
  final String navigator;
  ReButton ({@required this.hight,@required this.text,@required this.navigator});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // ignore: deprecated_member_use
      child: FlatButton(
        height: hight * .08,
        onPressed: (){
          Navigator.pushNamed(context, navigator);
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
              color: KmainColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
    );
  }
}
