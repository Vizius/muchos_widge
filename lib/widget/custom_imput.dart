
import 'package:flutter/Material.dart';

class CustomTextfield extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffix;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String,String> formValues;

  const CustomTextfield({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffix, 
    this.keyboardType, 
    this.obscureText=false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value){
        formValues[formProperty]=value;
      },
      validator: (value){
        if(value == null) return "Este campo es requerido";
        return value.length<3 ? "Minimo 3 letras":null;

      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefix: Icon(Icons.person),
        suffixIcon: suffix == null ? null: Icon(suffix),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(  
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //     )
        // )

      ),
    );
  }
}