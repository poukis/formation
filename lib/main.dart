import 'package:app_flutter/emploi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.png'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Padding(
                padding: const EdgeInsets.only(left: 50.0,right:50.0,bottom: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Nom d'utilisateur"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0,right: 50.0,top: 10.0,bottom: 15.0),
                child: TextField(
                  obscureText: hide,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: "Mot de passe",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          hide = !hide;
                        });
                      },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
                  ),
                ),
              ),
              Center(
                child: TextButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                },child: Text("Mot de passe oublié?",style: TextStyle(color: Colors.black),),),
              ),
              Center(
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Back()));
                    }, child: Text("Connecter")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


