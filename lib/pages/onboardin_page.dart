import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/home_page.dart';
import 'package:flutter_application_4/widget/card_tecnm.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardTecnmData(
      title: "Tecnologico Nacional de Mexico en Celaya",
      
      subtitle:
          "La técnica por un México mejor",
      image: const AssetImage("assets/images/logo_itc.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.blueAccent,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/animacion1.json"),
    ),
    CardTecnmData(
      title: "Ingeneria en sistemas computacionales",
      subtitle: "Capacitados para gestionar y administrar la infraestructura tecnológica de una organización",
      image: const AssetImage("assets/images/isc_itc.jpg"),
      backgroundColor: Colors.blueGrey,
      titleColor: Colors.greenAccent,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/animacion7.json"),
    ),
    CardTecnmData(
      title: "Instalaciones",
      subtitle: "Campus 2 del tecnologico nacional de Mexico en Celaya",
      image: const AssetImage("assets/images/itcelaya.jpg"),
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/animacion8.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardTecnm(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      ),
    );
  }
}
