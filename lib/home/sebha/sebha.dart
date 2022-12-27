import 'package:flutter/material.dart';
class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double angle=0.0;
  int currentIndex=0;
  int counter=0;
  List<String> azkar=[
     "سبحان الله"
    ,"الحمد لله"
    ,"الله اكبر"
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      child: Column(
        children: [
          Container(
            height: mediaQuery.height *0.42,
            child: Stack(
                      children: [
                        Positioned(
                          left: mediaQuery.width *.46,
                          top: 37,
                          child: Image.asset ("assets/images/head of sebha.png",
                            color: Theme.of(context).colorScheme.onBackground,
                            height: mediaQuery.height *0.1,),
                        ),
                        Positioned(
                          top:100,
                          left: mediaQuery.width *.2,
                          child: InkWell(
                            onTap: () {
                              onClick();
                            },
                            child: Transform.rotate(
                              angle:angle ,
                              child: Image.asset ("assets/images/body of sebha.png",
                                color: Theme.of(context).colorScheme.onBackground,
                                height: mediaQuery.height *0.28,),
                            ),
                          ),
                        ),

                       ],
                      ),
          ),
          Text( "عدد التسبيحات",style:Theme.of(context).textTheme.headline1),
          Container(
            padding: const EdgeInsets.symmetric(vertical:20,horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(.7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Theme.of(context).colorScheme.onPrimary)
            ),
            child: Text(counter.toString(),style: Theme.of(context).textTheme.headline1,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical:6,horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground.withOpacity(.85),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Theme.of(context).colorScheme.onPrimary)
            ),
            child: Text(azkar[currentIndex],style: Theme.of(context).textTheme.headline1!.
            copyWith(color: Colors.black),),
          ),

        ],
      ),
    );
  }
  onClick(){
   setState(() {
     counter++;
     angle--;
     if(counter==34){
       currentIndex++;
       counter=0;
     }
     if(currentIndex>azkar.length-1){
       currentIndex=0;
     }
   });

  }
}
