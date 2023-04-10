



import 'package:flutter/Material.dart';

class CustomCardtipo2 extends StatelessWidget {

  final String imageUrl;
  final String? textUrl;

  const CustomCardtipo2({
    Key? key, 
    required this.imageUrl, 
    this.textUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      
      clipBehavior:Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      
      elevation: 10,
      child: Column(
        children:  [
          
         FadeInImage(
          
          image: NetworkImage(imageUrl), 
          placeholder: const AssetImage("assets/loadpictures.gif"),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 50),
          
          
        ),
        
        if(textUrl != null)
          Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10,bottom: 10),
          child: TextButton(
            onPressed: () {
              
            },
            child: Text(textUrl ?? "sin titulo")
          )
          
        )
       
      ]),
      
      );
  }
}

