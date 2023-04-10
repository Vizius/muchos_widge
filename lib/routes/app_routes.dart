import 'package:flutter/material.dart';
import 'package:muchos_widge/models/menu_option.dart';
import 'package:muchos_widge/screens/screens.dart';

class AppRoutes{

  static const initialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(route: "home",name: "Home screen", screen: const HomeScreen(),icon: Icons.home_max_sharp),
    MenuOption(route: "listview1",name: "lista 1", screen: const ListView1Screen(),icon: Icons.list),
    MenuOption(route: "listview2",name: "lista 2", screen: const ListView2Screen(),icon: Icons.list_alt),
    MenuOption(route: "alert",name: "alerta", screen: const AlertScreen(),icon: Icons.alarm),
    MenuOption(route: "card",name: "cards", screen: const CardScreen(),icon: Icons.card_membership_outlined),
    MenuOption(route: "avatar",name: "Perfil", screen: const AvatarScreen(),icon: Icons.account_circle_sharp),
    MenuOption(route: "imput",name: "textimput", screen: const ImputScreen(),icon: Icons.text_snippet_sharp),
    MenuOption(route: "Slider",name: "Imagenes zoom y otros", screen: const SliderScreen(),icon: Icons.slow_motion_video_sharp),
    MenuOption(route: "ListviewBuilder",name: "Scroll de imagenes", screen: const ListviewBuilderScreen(),icon: Icons.file_upload_outlined)

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes()
  {
    Map<String, Widget Function(BuildContext)> appRoutes={

    };
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) =>  option.screen});
    }

    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
        "home": (BuildContext context) =>  const HomeScreen(),
        "listview1": (BuildContext context) =>  const ListView1Screen(),
        "listview2": (BuildContext context) =>  const ListView2Screen(),
        "alert": (BuildContext context) =>  const AlertScreen(),
        "card": (BuildContext context) =>  const CardScreen(),
  };*/

}