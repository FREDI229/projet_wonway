import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wonway/UI/pages/IT/it_connexion.dart';
import 'package:wonway/UI/pages/IT/it_inscrption.dart';
import 'package:wonway/UI/pages/Recreteur/recru_inscription.dart';

class LoobiPage extends StatefulWidget {
  const LoobiPage({super.key});

  @override
  State<LoobiPage> createState() => _LoobiPageState();
}

class _LoobiPageState extends State<LoobiPage> {
  Color borderColor1 = Colors.grey.shade500; // couleur par défaut
  Color borderColor2 = Colors.grey.shade500; // couleur par défaut
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.only(left: 20),
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,

                        colors: [Colors.green, Colors.blue],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.brain,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15,),
                        Text("Rejoignez WonWay"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(
                          fontSize: 48,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        text: "Créer Votre Compte ",
                      ),
                      TextSpan(
                        text: "WonWay",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  """Choisissez votre profil et accédez à la platforme de recrutementg ITla plus avancée avec IA intégrée.""",
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const It_InscriptionPage(),
                      ),
                    );
                  },
                  onHover: (isHovering) {
                    setState(() {
                      borderColor1 = isHovering
                          ? Colors.purple
                          : Colors.grey.shade500;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor1, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 3, 129),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.userPlus,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Je Cherche un Emploi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mettez en valeur vos compétences IT et trouvez l'opportunité parfait e grâce à notre IA de matching.",
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.brain,
                              color: Colors.green,
                              size: 12,
                            ),
                            SizedBox(width: 10),
                            Text("Analyse IA de votre profil"),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.buildingColumns,
                              color: Colors.deepPurple,
                              size: 12,
                            ),
                            SizedBox(width: 10),
                            Text("Opportunités personnelisées"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //  Deuxième container
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecruteurConnexionPage(),
                      ),
                    );
                  },
                  onHover: (isHovering) {
                    setState(() {
                      borderColor2 = isHovering
                          ? Colors.purple
                          : Colors.grey.shade500;
                    });
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor2, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 3, 129),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.buildingCircleCheck,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Je Recrute des Talents",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Trouvez les développeurs idéaux rapidement grâce à notre systeme de erecommandation IA avancé.",
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.brain,
                              color: Colors.green,
                              size: 12,
                            ),
                            SizedBox(width: 10),
                            Text("Matching IA précis"),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.people_alt_outlined,
                              color: Colors.deepPurple,
                              size: 20,
                            ),

                            SizedBox(width: 10, height: 15),
                            Text("Accès aux meilleur talents"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
