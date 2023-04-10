
import 'package:flutter/Material.dart';
import 'package:muchos_widge/routes/app_routes.dart';

import '../themes/app_theme.dart';


class CustomCardtipo1 extends StatelessWidget {
  const CustomCardtipo1({
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOp = AppRoutes.menuOption;
    const colore4 = AppTheme.primaryColor;

    return Card(
      clipBehavior:Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      child:  Column(
        children: [
         const ListTile(
          leading: Icon(Icons.card_membership_outlined,color:colore4,),
          title: Text("soy un titulo"),
          subtitle: Text("Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehaviorCreates a text widget."),
        ),

        Padding(
          padding: const EdgeInsets.only(right:5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, menuOp[0].route);
              },
              style: TextButton.styleFrom(primary: colore4),
              child: const Text("Cancelar"),
              
            ),
            TextButton(
              onPressed: () {
                 Navigator.pushNamed(context, menuOp[3].route);
              },
              style: TextButton.styleFrom(primary:colore4),
              
              child: const Text("Ok"),
            )

          ],),
        )
      ]),
    );
  }
}