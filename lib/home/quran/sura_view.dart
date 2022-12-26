import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class SuraView extends StatefulWidget {
 static const String routeName='sura view';

  @override
  State<SuraView> createState() => _SuraViewState();
}

class _SuraViewState extends State<SuraView> {
List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraViewArgs;
    var provider=Provider.of<MyProvider>(context);
    if(verses.isEmpty){
      loadFile(args.index);
    }

    return Stack(
      children: [
        Image.asset(  provider.getBackground(),
            width: double.infinity, fit: BoxFit.fitWidth),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(args.suraName,
              style: Theme.of(context).textTheme.headline1,),
          ),
          body:verses.isEmpty?Center(child: CircularProgressIndicator()):
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Theme.of(context).colorScheme.onPrimary)
            ),
            padding: EdgeInsets.only(left: 10,right: 10),
            margin: EdgeInsets.symmetric(vertical: 50,horizontal: 15),
            child: ListView.separated(
              separatorBuilder: (context, index) =>
              Divider(color:Theme.of(context).colorScheme.onPrimary ,
              thickness: 2,
              ),
              itemCount: verses.length,
              itemBuilder: (context, index) {
             return Text(verses[index],
               style: Theme.of(context).textTheme.headline1?.
               copyWith(letterSpacing: .55,color: Theme.of(context).colorScheme.onPrimary,
                   fontSize: 25,height: 2),
             textAlign: TextAlign.center,);
},),
          ),

        ),
      ],
    );
  }

  void loadFile(int index)async{
   String content=await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String>lines=content.split('\n');
   print(lines);
   verses=lines;
   setState(() {

   });
  }
}
class SuraViewArgs{
  String suraName;
  int index;
  SuraViewArgs(this.suraName,this.index);
}