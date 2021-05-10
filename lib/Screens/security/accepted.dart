import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
class MyItem{
  MyItem({this.isExpanded:false,this.body,this.header});
  bool isExpanded;
  final String header;
  final String body;
}
class Accepted extends StatefulWidget {
  static String id ='Accepted';

  @override
  _AcceptedState createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  List<MyItem> _items =<MyItem>[
    MyItem(header: 'Header',body: 'Body1'),
    MyItem(header: 'Header',body: 'Body1'),
    MyItem(header: 'Header',body: 'Body1'),
    MyItem(header: 'Header',body: 'Body1'),
    MyItem(header: 'Header',body: 'Body1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainColor,
      body: ListView(
        children:<Widget> [
          ExpansionPanelList(
            expansionCallback: (int index ,bool isExpanded){
              setState(() {
                _items[index].isExpanded=! _items[index].isExpanded;

              });
            },
            children: _items.map((MyItem item){
              return ExpansionPanel(
                  headerBuilder: (BuildContext context  ,bool isExpanded){
                    return Text(item.header,style: TextStyle(color: Colors.green,fontSize: 20));
                  },
                  isExpanded:item.isExpanded,
                body: Container(
                  child: Text(item.body,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.green,fontSize: 18),)
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
