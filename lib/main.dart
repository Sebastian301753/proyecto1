import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyecto1/view/Registro.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
class Home extends StatefulWidget {
  @override
  Homestrat createState() => Homestrat();
}

class Homestrat extends State<Home>{
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Bienvenidos",
      home:Scaffold(
        appBar: AppBar(
          title: Text("Linea 2"),
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('img/login.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Email Usuario',
                        hintText: 'Digite email de usuario '
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Password',
                        hintText: 'Digite la contraseña '
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20,left: 10, right: 10),
                    child: ElevatedButton(
                      onPressed: (){
                        print("Boton precionadd");
                      },
                      child: Text("Enviar"),

                    )

                ),
                Padding(padding: EdgeInsets.only(top: 20,left: 10, right: 10),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Registro()));
                      },
                      child: Text("Registrar"),

                    )

                )
              ]
          ),

        ),
      ) ,
    );
  }
}