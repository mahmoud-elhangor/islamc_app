import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
         InkWell(
           onTap: () {
             pro.changeTheme(ThemeMode.light);

           },
           child:ThemeItem(context,'light',pro.themeMode==ThemeMode.light) ,
         ),
          SizedBox(height: 20,),
         InkWell(
           onTap: () {
             pro.changeTheme(ThemeMode.dark);
           },
           child: ThemeItem(context,'dark',pro.themeMode==ThemeMode.dark),
         )
        ],
      ),
    );
  }
  Widget ThemeItem(BuildContext context,String text,bool isSelected)=>Row(
    children: [
      Text(text,style: Theme.of(context).textTheme.headline1?.copyWith(
          fontSize: 20,
          color: isSelected?Theme.of(context).colorScheme.onPrimary:
          Theme.of(context).colorScheme.primary
      )),
      Spacer(),
      Icon(Icons.done,size: 25,color: isSelected?Theme.of(context).colorScheme.onPrimary:
      Theme.of(context).colorScheme.primary ,)
    ],
  );
}
