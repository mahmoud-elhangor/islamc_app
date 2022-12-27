import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 150,),
          Image.asset('assets/images/radio1.png'),
          Text('اذاعه القران الكريم',style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.play_arrow,size: 40,color: Theme.of(context).colorScheme.onPrimary,),
              Icon (Icons.pause,size: 40,color: Theme.of(context).colorScheme.onPrimary,),
              Icon (Icons.arrow_left,size: 60,color: Theme.of(context).colorScheme.onPrimary,),
            ],
          )

        ],
      ),
    );
  }
}
