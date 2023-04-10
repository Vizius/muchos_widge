
import 'package:flutter/material.dart';

import '../widget/widgets.dart';


class ImputScreen extends StatelessWidget {
   
  const ImputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    

    final GlobalKey<FormState> myformkey= GlobalKey<FormState>();

    final Map<String,String> formValues ={

      "Usuario2":"",
      "Correo2":"",
      "Contraseña2":"",
      "role":"admin"

    };
    

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Imputs y formularios"),
        ),
      //Scroll de solo 1 objeto
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(

            key: myformkey,

            child: Column(
              children:  [
          
              CustomTextfield(labelText: "Usuario", hintText: "Ingrese nombre",suffix: Icons.person, formProperty: "Usuario2",formValues: formValues,),
              const SizedBox(height:30),
          
              CustomTextfield(labelText: "Correo", hintText: "Ejemplo@ejemplo.com",suffix: Icons.email,keyboardType: TextInputType.emailAddress,formProperty: "Correo2",formValues: formValues),
              const SizedBox(height:30),
          
              CustomTextfield(labelText: "Contraseña", hintText: "Contraseña",suffix: Icons.key,obscureText: true,formProperty: "Contraseña2",formValues: formValues),
              const SizedBox(height:30),

              DropdownButtonFormField<String>(
                value: "admin",
                items: const [
                  DropdownMenuItem(value: "admin",child: Text("admin"),),
                  DropdownMenuItem(value: "Super admin",child: Text("Super admin"),),
                  DropdownMenuItem(value: "garzon",child: Text("garzon"),),
                ], 
                onChanged: (value){
                  print(value);
                  formValues["role"] = value ?? "admin";
                },
              ),
              ElevatedButton( 
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text("Guardar"))
          
                ),
                onPressed: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myformkey.currentState!.validate()){
                    print("form no valido");
                    
                    return;}
                  //Imprimir valores del formulario
                  print(formValues);
          
                },
              )
              ]
            ),
          ),      
          ),
          
        )
    );
  }
}