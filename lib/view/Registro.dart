import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Registro extends StatefulWidget{
  @override
  RegistroApp createState()=> RegistroApp();

}

class RegistroApp extends State<Registro>{
  TextEditingController nombre = TextEditingController();
  TextEditingController identidad = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController contrasenia = TextEditingController();


  final firebase= FirebaseFirestore.instance;

  insertarDatos ()async{
    try{
      await firebase.collection("Usuarios").doc().set({
        "NombreUsuario":nombre.text,
        "IdentidadUsuario": identidad.text,
        "CorreoUsuario": correo.text,
        "TelefonoUsuario": telefono.text,
        "ContraseñaUsuario": contrasenia.text,
      });
      print("Envio Correcto");
    }catch(e){
      print("Error en insert........."+ e.toString());
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text("Registro de usuarios"),
          backgroundColor: Colors.lightGreen
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                    labelText: "Nombre"
                ),
                style: TextStyle(
                    color: Color(0xFF0977ff)
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                controller: identidad,
                decoration: InputDecoration(
                    labelText: "Identificacion"
                ),
                style: TextStyle(
                    color: Color(0xFF0977ff)
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                controller: correo,
                decoration: InputDecoration(
                    labelText: "Correo electronico"
                ),
                style: TextStyle(
                    color: Color(0xFF0977ff)
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                controller: telefono,
                decoration: InputDecoration(
                    labelText: "Telefono"
                ),
                style: TextStyle(
                    color: Color(0xFF0977ff)
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                controller: contrasenia,
                decoration: InputDecoration(
                    labelText: "Contraseña"
                ),
                style: TextStyle(
                    color: Color(0xFF0977ff)
                ),

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 10, right: 10),
                child: ElevatedButton(
                  onPressed: (){
                    insertarDatos();
                  },
                  child: Text("Registrar"),

                )

            ),
          ],
        ),
      ),
    );
  }
}