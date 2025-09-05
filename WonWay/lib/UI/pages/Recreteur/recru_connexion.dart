


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Recru_connexionPage extends StatefulWidget {
  const Recru_connexionPage({super.key});

  @override
  State<Recru_connexionPage> createState() => _Recru_connexionPageState();
}

class _Recru_connexionPageState extends State<Recru_connexionPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController mailctrl = TextEditingController();
  final TextEditingController passwordctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80,left: 16,right: 16,bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: const EdgeInsets.only(left: 20),
              child: Container(
                width: 200,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.green, Colors.blue],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.brain,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Text("Bienvenue sur WonWay"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    text: "Connexion à Votre  ",
                  ),
                  TextSpan(
                    text: "Compter",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Accédez à votre dashboard et découvrez les opportunités qui vous attendent.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              const Color.fromARGB(255, 32, 69, 136),
                              const Color.fromARGB(255, 113, 33, 145),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.rightToBracket,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Se connecter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Text(
                        "Entrer vos identifiants pour accéder à votre espace personnel",
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Adresse email",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: mailctrl,
                              decoration: const InputDecoration(
                                hintText: "Votre@gmail.com",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) => !value!.contains("@")
                                  ? "Entrez un email valide"
                                  : null,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Mot de passe",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: passwordctrl,
                              decoration: const InputDecoration(
                                hintText: "Creer un mot de passe sécurisé",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                              ),
                              obscureText: true,
                              validator: (value) => value!.length < 6
                                  ? "Mot de passe trop court"
                                  : null,
                            ),
                            const SizedBox(height: 10),

                            TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "mot de passe oublié ? ",
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    const Color.fromARGB(255, 97, 120, 163),
                                    const Color.fromARGB(255, 97, 120, 163),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  () {
                                    if (_formkey.currentState!.validate()) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text("creation reussie"),
                                        ),
                                      );
                                    }
                                  };
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Se connecter ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 20),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Recru_connexionPage(),
                                  ),
                                );
                              },
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(color: Colors.grey.shade500),
                                  children: [
                                    TextSpan(text: "Pas encore de compte ? "),
                                    TextSpan(
                                      text: "S'inscrire gratuitement",
                                      style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Ou explorez avec un compte de démonstraction",style: TextStyle(color: Colors.grey.shade500),),
                        ],
                      ),
SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                           border: BoxBorder.all(width: 1,color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dashboard Candidat ",
                                 style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: BoxBorder.all(width: 1,color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dashboard Recruteur ",
                                 style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
