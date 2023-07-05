import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.cover,
              opacity: 0.7,
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,right: 150.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.library_add_check,
                        color: Colors.grey,
                      ),
                    ),
                    Text('Permissions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Demande de permission',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                          width: 190.0,
                          child: Text(
                            'Lorem ipsum...',
                            style: TextStyle(color: Colors.grey),
                          )),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Statut:',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                          Text('Accepté',style: TextStyle(color: Colors.green,fontSize: 18),)
                        ],
                      ),
/*
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 3.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<
                                        Color>(
                                        Color(0xFFba3735))),
                                onPressed: () {
                                  */
/*Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              Tableau()));*/ /*

                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2.0),
                                      child: Icon(
                                        Icons.note_alt_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Liste des étudiants',
                                      style: TextStyle(color: Colors.white,),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<
                                        Color>(
                                      Color(0xFF289b9f),
                                    )),
                                onPressed: () {
                                  */
/*Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              CoursNonPro()));*/ /*

                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2.0),
                                      child: Icon(
                                        Icons.list_alt_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
*/
/*
                                    Row(
                                      children: [
                                        Badge(badgeContent: Text(item['countCours'].toString(),style: TextStyle(color: Colors.white),),
                                          badgeStyle: BadgeStyle(badgeColor: Color(0xFFba3735)),
                                          position: BadgePosition.topEnd(top: -25.0,end: -20.0),
                                          child:   Text(
                                            'Vos cours',
                                            style: TextStyle(color: Colors.white,),
                                          ),)
                                      ],
                                    ),
*/ /*

                                  ],
                                )),
                          ),
                        ],
                      )
*/
                    ],
                  )
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Demande de permission',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 5.0),
                        child: Text(
                          'Lorem ipsum...',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Statut:',
                            style: TextStyle(color: Colors.black,fontSize: 18),
                          ),
                          Text('Refusé',style: TextStyle(color: Colors.red,fontSize: 18),)
                        ],
                      ),
/*
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 3.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<
                                        Color>(
                                        Color(0xFFba3735))),
                                onPressed: () {
                                  */
/*Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              Tableau()));*/ /*

                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2.0),
                                      child: Icon(
                                        Icons.note_alt_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Liste des étudiants',
                                      style: TextStyle(color: Colors.white,),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<
                                        Color>(
                                      Color(0xFF289b9f),
                                    )),
                                onPressed: () {
                                  */
/*Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              CoursNonPro()));*/ /*

                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2.0),
                                      child: Icon(
                                        Icons.list_alt_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
*/
/*
                                    Row(
                                      children: [
                                        Badge(badgeContent: Text(item['countCours'].toString(),style: TextStyle(color: Colors.white),),
                                          badgeStyle: BadgeStyle(badgeColor: Color(0xFFba3735)),
                                          position: BadgePosition.topEnd(top: -25.0,end: -20.0),
                                          child:   Text(
                                            'Vos cours',
                                            style: TextStyle(color: Colors.white,),
                                          ),)
                                      ],
                                    ),
*/ /*

                                  ],
                                )),
                          ),
                        ],
                      )
*/
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
