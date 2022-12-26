import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/sura_view.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
  int index;
  SuraNameItem(this.suraName,this.index);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraView.routeName ,
        arguments:SuraViewArgs(suraName,index) );
      },
      child: Center(
        child: Text(suraName,
          style: Theme.of(context).textTheme.headline1?.copyWith(
            fontSize: 25,
          )),
      ),
    );
  }
}