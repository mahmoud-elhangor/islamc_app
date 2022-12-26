import 'package:flutter/material.dart';
import 'package:islamy_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'show_modal_language_bottom_sheet.dart';
import 'show_modal_theme_bottom.dart';
class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",style:Theme.of(context).textTheme.headline1?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary
          )),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                color: Theme.of(context).colorScheme.surface
              ),
              child: Text(provider.language=="en"?"English":"arabic",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,fontSize: 20
                )),
            ),
          ),
          SizedBox(height: 40,),
          Text("Theme",style: Theme.of(context).textTheme.headline1?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary
          )),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                  color: Theme.of(context).colorScheme.surface
              ),
              child: Text(provider.themeMode==ThemeMode.light?"light":"dark",
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,fontSize: 20
                  )),
            ),
          )
        ],
      ),
    );
  }
  void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return LanguageBottomSheet();
    },);
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return ThemeBottomSheet();
}
);
  }
}
