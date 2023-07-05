import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            opacity: 0.7,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.access_time_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Tâches',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      trailing: SizedBox(
                        width: 25,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Center(
                              child: Text(
                                'Intégration template'.toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Exécuté",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF178080)),
                                  )
                                  /*  : data[index]['siAnnuler']
                                          ? const Text('Annulé',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFFba3735)))
                                          : const Text(
                                              "Non exécuté",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFFdb9f1f)),
                                            )*/
                                  )),
                        ],
                      ),
                      subtitle: Text(
                        '31 Mai 2023',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
