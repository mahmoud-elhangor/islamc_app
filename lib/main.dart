import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'home/ahadeth/hadeth_details.dart';
import 'home/home_screen.dart';
import 'home/quran/sura_view.dart';
import 'my_theme.dart';
import 'providers/my_provider.dart';
void main(){
  runApp(ChangeNotifierProvider(
    create:(context) => MyProvider(),
    child:MyApplicaton(),
  ),);
}
class MyApplicaton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
   return  MaterialApp(
     localizationsDelegates: [
       AppLocalizations.delegate,
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
       GlobalCupertinoLocalizations.delegate,
     ],
     supportedLocales: [
       Locale('en'),
       Locale('ar'),
     ],
     locale: Locale(provider.language),
     debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.routeName,
     routes: {
       HomeScreen.routeName:(c)=>const HomeScreen(),
       SuraView.routeName:(c)=>SuraView(),
       HadethDetails.routeName:(context) => HadethDetails()
     },
     theme:MyThemeData.lightTheme ,
     darkTheme: MyThemeData.darkTheme,
     themeMode: provider.themeMode,
   );
  }
}