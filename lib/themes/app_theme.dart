
import 'package:flutter/Material.dart';



class AppTheme {

  static const Color primaryColor = Colors.cyan;
  

  static final  ThemeData lighTheme = ThemeData.light().copyWith(
    //temas de appbar
    appBarTheme:  const AppBarTheme(
       color: primaryColor,
       elevation: 0,
       centerTitle: true
    ),
    //Temas de boton de texto
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primaryColor)
    ),
    //temas de floatingbuttom
    floatingActionButtonTheme: const FloatingActionButtonThemeData(

      backgroundColor: primaryColor,
      elevation: 0

    ),
    //ElevationButtom temas
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor ,
        shape: const StadiumBorder(),
        elevation: 0
        )
    ),

    inputDecorationTheme: const InputDecorationTheme(

      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), 
          topRight: Radius.circular(10)
        ) 
      ),
      
      focusedBorder:  OutlineInputBorder( 
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), 
          topRight: Radius.circular(10)
      )),
      



    )
  );

  static final  ThemeData darkTheme = ThemeData.dark().copyWith(

    appBarTheme:  const AppBarTheme(
       color: primaryColor,
       elevation: 0,
       centerTitle: true
      ),

      scaffoldBackgroundColor: Colors.black
  );

}


