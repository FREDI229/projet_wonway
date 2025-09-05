import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wonway/UI/pages/IT/it_connexion.dart';
import 'package:wonway/UI/pages/loobi.dart';

class It_InscriptionPage extends StatefulWidget {
  const It_InscriptionPage({super.key});

  @override
  State<It_InscriptionPage> createState() => _It_InscriptionPageState();
}

class _It_InscriptionPageState extends State<It_InscriptionPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController prenomctrl = TextEditingController();
  final TextEditingController nomctrl = TextEditingController();
  final TextEditingController mailctrl = TextEditingController();
  final TextEditingController passwordctrl = TextEditingController();
  final TextEditingController confirmctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80,left: 16,right: 16,bottom: 20),
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
                    Text("Rejoignez WonWay"),
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
                    text: "Créer Votre Compte ",
                  ),
                  TextSpan(
                    text: "WonWay",
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
              "Choisissez votre profil et accédez à la plateforme de recrutement IT la plus avancée avec IA intégrée.",
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
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
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
                            FontAwesomeIcons.userPlus,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Inscription Candidat",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                      ),
                      const Text(
                        "Remplissez vos informations pour créer votre compte WonWay",
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
                                  "Prénom",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            TextFormField(
                              controller: prenomctrl,
                              decoration: const InputDecoration(
                                hintText: "Votre prénom",
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
                              validator: (value) =>
                                  value!.isEmpty ? "Entrez votre prénom" : null,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Nom",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: nomctrl,
                              decoration: const InputDecoration(
                                hintText: "Votre nom",
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
                              validator: (value) =>
                                  value!.isEmpty ? "Entrez votre nom" : null,
                            ),
                            const SizedBox(height: 10),

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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Confirmer votre mot de passe",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: confirmctrl,
                              decoration: const InputDecoration(
                                hintText: "Confirmer votre mot de passe",
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
                              validator: (value) => value != passwordctrl.text
                                  ? "Les mots de passe ne correspondent pas"
                                  : null,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoobiPage(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [const Text("Retour")],
                              ),
                            ),
                            SizedBox(height: 20),

                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    const Color.fromARGB(255, 32, 69, 136),
                                    const Color.fromARGB(255, 113, 33, 145),
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
                                      "Commencer ",
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
                                        const It_ConnexionPage(),
                                  ),
                                );
                              },
                              child:  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.grey.shade500
                                    ),children:[
                                      TextSpan(
                                        text: "Déja un compte ? "
                                      ),
                                      TextSpan(text: "Se connecter",style: TextStyle(color: Colors.deepPurpleAccent))
                                    ]
                                  ),
                                  ),
                            ),
                          ],
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
