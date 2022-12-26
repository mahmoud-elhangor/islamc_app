import 'package:flutter/material.dart';
import 'package:islamy_app/home/ahadeth/ahadeth.dart';
import 'package:provider/provider.dart';
import '../../providers/my_provider.dart';
class HadethDetails extends StatelessWidget {
static const String routeName='hadethDetails';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider=Provider.of<MyProvider>(context);
    return  Stack(
        children: [
        Image.asset( provider.getBackground(),
        width: double.infinity, fit: BoxFit.fitWidth),
    Scaffold(
    appBar: AppBar(
    title: Text(args.title, style: Theme.of(context).textTheme.headline1),
    centerTitle: true,
    ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color:Theme.of(context).colorScheme.onPrimary)
        ),
        padding: EdgeInsets.only(left: 10,right: 10),
        margin: EdgeInsets.symmetric(vertical: 50,horizontal: 15),
        child: ListView.builder(
          itemCount: args.content.length,
          itemBuilder: (context, index) {
          return Text(args.content[index],style: Theme.of(context).textTheme.headline1?.
          copyWith(letterSpacing: .55,color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 25,height: 2),
            textAlign: TextAlign.center,);
        },),
      ),

    ),]);
  }
}
