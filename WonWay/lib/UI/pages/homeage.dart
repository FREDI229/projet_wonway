import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
        title: Row(
          children: [
             Container(
                          //  padding: EdgeInsets.only(top: 2,left: 2),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          const Color.fromARGB(255, 32, 69, 136),
                          const Color.fromARGB(255, 113, 33, 145),
                        ],
                      ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.people_alt_outlined,color: Colors.white,size: 15,)
                   
                          ),
                          SizedBox(width: 10),
                        
            Text(
              "WonWay",
              style: TextStyle(
                 color: Colors.deepPurple,
                
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          const SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      width: 300,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.brain,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text("Intelligence Artificielle Intégrée"),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: "Connectez les "),

                        TextSpan(
                          text: "talents It ",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        TextSpan(text: "aux "),
                        TextSpan(
                          text: "Opportunités ",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    """WonWay révolutionne le recrutement IT avec une IA avancée qui analyse les profil et optimise les correspondances telents-entreprises""",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
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
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Commencer Gratuitement",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Voir la Démo IA",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.brain,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Analyse IA des CV",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Notre IA analyse automatiquement la compatibilité entre les profils et les posytes",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  Container(
                    padding: EdgeInsets.only(top: 16),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bolt,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Matching Instantané",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Trouvez les candidats idéaux ou les psotes parfait en quelques secondes ",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  Container(
                    padding: EdgeInsets.only(top: 16),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bullseye,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          " Ciblage Précis",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Recommandations personnalisées basées sur les compétences et l'expérience ",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                bottom: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(0, 0),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "10k+",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Dévolopeur Inscrits",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      // SizedBox(width: 150,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "500k+",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Entreprise Partenaires",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "95%",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Taux de Satisfaction",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "48h",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Temps Moyen de Recrutement",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.deepPurple],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.brain,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Fonctionalités IA",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      children: [
                        TextSpan(text: "Pourquoi Choisir "),
                        TextSpan(
                          text: "WonWay ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        TextSpan(text: "?"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    """Notre plateforme combine l'intelligence artificielle et l'expertise humaine pour créér les meilleures correspondances du marché""",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.brain,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Analyse IA Avancée",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Notre IA analyse en profondeur les compétences ,l'expérience et la personalité professionnelle.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.circleChevronDown,
                              color: Colors.green,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Powered by OPen AI",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.bolt,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Matching Instentané",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Trouvez les meilleurs candidats ou opportunités en quelques szcondes grầce à nos algorithmes.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.circleChevronDown,
                              color: Colors.green,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Résultat en temps réel",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.shield,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Sécurité Maximale",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Vos données sont protégés avec les plus hauts standards de sécurité et de confidentialités.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.circleChevronDown,
                              color: Colors.green,
                              size: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Certifié RGPD",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),

                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 83, 3, 129),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Icon(Icons.people_alt_outlined,color: Colors.white,size: 30,)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pour les candidats",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Mettez en valeur vos compétence et recevez des opportunités personnalisés.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text("Explorer"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Pour les Recruteurs",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Trouvez les talents idéaux grầce à notre systeme de recommendation IA.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text("Découvrir"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.green, Colors.deepPurple],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.arrowTrendUp,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Analytics Avancés",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """Suivez vos performances et optimisez votre strategie de recrutement.""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.arrowTrendUp,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Insights en temps réel",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ce Que Disent Nos Utilisateurs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    """Découvrez pourquoi WonWay est la platforme préférée des professionels IT""",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """L'analyse IA de WonWay m'a permis de trouver le poste parfait en 2 semaines. Incroyable précision dans les recommandations !""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sarah M.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  "Developpeuse Full-Stack ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """En tant que recruteur,WonWay a divisé par 3 notre temps de sourcing.Les candidats sont parfaitement qualifiés!""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Marc L.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  "Recruteur Tech chez TechCorp",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                          ],
                        ),

                        SizedBox(height: 10),
                        Text(
                          """L'interface est intuitive et l'IA comprend vraiment les nuances techniques.Un game changer pour le recrutement IT!""",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Emma R.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              "CTO chez StartupLab",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 25,
                left: 10,
                right: 10,
                bottom: 25,
              ),

              width: double.infinity,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    """Prêt à Révolutionner Votre Recrutement ?""",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    """Rejoignez des millier de professionnels qui font confiance à WonWay pour leurs besoins en recrutement It""",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
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
                      onPressed: () {},
                      child: Text(
                        "Commencer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                          padding: EdgeInsets.only(top: 5),
                          width: 30,
                          height: 30,
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
                          child: Column(
                            children: [
                       Icon(Icons.people_alt_outlined,color: Colors.white,size: 20,)
                            ],
                          ),
                        ),
                    
                    SizedBox(width: 5),
                    Text(
                      "WonWay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     
                    FaIcon(FontAwesomeIcons.copyright, size: 14,color: Colors.grey,),
                    SizedBox(width: 5),
                    Text(
                      """2024 WonWay. Tous droits réservés.Platforme de recrutement IT avec IA""",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
