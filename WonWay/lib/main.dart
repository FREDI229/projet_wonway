import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // optionnel
      home: HomePage(), // ton widget principal
    );
  }
}

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
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle, color: Colors.deepPurple),
            ),
            Text(
              "WonWay",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 20),
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      child: Text(
                        "commencer Gratuitement",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: const Color.fromARGB(240, 22, 72, 112),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Voir la Démo IA",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
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
                          color: Colors.grey.shade300,
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
                          padding: EdgeInsets.only(top: 12, ),
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
                          Text("Analyse IA des CV" ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Text("Notre IA analyse automatiquement la compatibilité entre les profils et les posytes",style: TextStyle(fontSize: 14,color: Colors.grey),textAlign: TextAlign.center,)
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
