import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _index = 0;
  List<String> persons = [
    'CAHOU Fiacre',
    'CAHOU Fiacre',
    'CAHOU Fiacre',
    'CAHOU Fiacre',
    'ASSOU Phiro',
    'ASSOU Phiro',
    'ASSOU Phiro',
    'COCOU Oli',
    'COCOU Oli',
    'COCOU Oli',
  ];

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Michael DENAHOU",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23.0),
                        ),
                        Text(
                          'Développeur web',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: Colors.blue[900],
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: const [
                              Text(
                                'Tâches effectuées',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: const [
                              Text(
                                'Tâches restantes',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: const [
                              Text(
                                'Permissions',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.list),
                        Text(
                          'Mes tâches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 15.0,
                ),
                child: Card(
                  child: Stepper(
                    controlsBuilder: (context, controller) {
                      return SizedBox();
                    },
                    currentStep: _index,
                    onStepTapped: (int index) {
                      setState(() {
                        _index = index;
                      });
                    },
                    steps: const <Step>[
                      Step(
                        title: Text('Tâche 1'),
                        content: Text('Intégration template'),
                      ),
                      Step(
                        title: Text('Tâche 2'),
                        content: Text('Consommation API'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
