import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/quran.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/my_provider.dart';
import 'ahadeth/ahadeth.dart';
import 'radio/radio.dart';
import 'sebha/sebha.dart';
import 'setting_tab/setting.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
           provider.getBackground(),
            width: double.infinity, fit: BoxFit.fitWidth),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islamy,
                style: Theme.of(context).textTheme.headline1),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items:  [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: const ImageIcon(AssetImage("assets/images/moshaf.png")),
                  label: 'quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: const ImageIcon(AssetImage("assets/images/Path 1.png")),
                  label: 'ahadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  backgroundColor:Theme.of(context).colorScheme.primary,
                  icon: const ImageIcon(AssetImage(
                    "assets/images/radio.png",
                  )),
                  label: 'radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: const Icon(Icons.settings), label: 'setting'),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
      QuranScreen(),
      AhadethScreen(),
      SebhaScreen(),
      RadioScreen(),
      SettingTab()
  ];
}
