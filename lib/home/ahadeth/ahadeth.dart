import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeth_number_item.dart';

class AhadethScreen extends StatefulWidget {
  const AhadethScreen({super.key});

  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
List<Hadeth>ahadeth=[];

  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty){
      LoadHadethFile();
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth.png"),
         const Divider(
           color: MyThemeData.colorGold,
           thickness: 3,
         ),
          Text(AppLocalizations.of(context)!.ahadeth,
            style: Theme.of(context).textTheme.headline1?.
          copyWith(fontSize: 25),),
          const Divider(
            color: MyThemeData.colorGold,
            thickness: 3,
          ),
          Expanded(
            child:ahadeth.isEmpty? Center(child: CircularProgressIndicator()):
            ListView.separated(
              itemCount: ahadeth.length,
              separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                color: MyThemeData.colorGold,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
              return HadethNumberItem(ahadeth[index].title,ahadeth[index]);
            },),
          )

        ],
      ),
    );
  }

  void LoadHadethFile()async{
   String content= await rootBundle.loadString("assets/files/ahadeth .txt");
  List<String>allAhadeth= content.trim().split('#');
  for(int i=0;i<allAhadeth.length;i++){
    String hadeth=allAhadeth[i];
    List<String> hadethLines=hadeth.trim().split('\n');
    String title=hadethLines[0];
    print(title);
    hadethLines.removeAt(0);
    Hadeth hadethData=Hadeth(hadethLines,title);
    ahadeth.add(hadethData);
    setState(() {});
  }

  }
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth(this.content,this.title);
}