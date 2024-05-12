import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}


class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: const [
            Iphone13ProMax1(),
          ],
        ),
      ),
    );
  }
}

class Iphone13ProMax1 extends StatelessWidget {
  const Iphone13ProMax1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 435,
          height: 823,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF89D1C9),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFF89D1C9)),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 26,
                top: 10,
                child: Container(
                  width: 358,
                  height: 40,
                  decoration: const BoxDecoration(color: Color(0xFF89D1C9)),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 69,
                        top: -2,
                        child: SizedBox(width: 219, height: 30, child: Stack()),
                      ),
                      const Positioned(
                        left: 276.67,
                        top: 17.33,
                        child: SizedBox(
                          width: 66.66,
                          height: 11.34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 42.33,
                                top: 0,
                                child: SizedBox(
                                  width: 24.33,
                                  height: 11.33,
                                  child: Stack(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 12,
                        child: SizedBox(
                          width: 54,
                          height: 21,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 54,
                                  height: 21,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                  ),
                                  child: const FlutterLogo(),
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
              Positioned(
                left: -19,
                top: 589,
                child: Container(
                  width: 435,
                  height: 300,
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 219, 217, 217)),
                ),
              ),
              const Positioned(
                left: 20.40,
                top: 161,
                child: SizedBox(
                  width: 54.10,
                  height: 28.70,
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 20,
                top: 136,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: const Color.fromARGB(255, 219, 207, 40), 
                  border: Border.all(width: 2), 
                ),
                ),
              ),
              Positioned(
                left: 15,
                top: 136,
                child: Container(
                  width: 65,
                  height: 58,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/saude.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 74,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: Colors.green,
                  border: Border.all(width: 2), 
                ),
                ),
              ),
              Positioned(
                left: 30,
                top: 82,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/fome.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 74,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: const Color.fromARGB(255, 129, 180, 222), 
                  border: Border.all(width: 2), 
                ),
                ),
              ),
              Positioned(
                left: 20,
                top: 201,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: const Color.fromARGB(255, 192, 19, 6), 
                  border: Border.all(width: 2), 
                ),
                ),
              ),
              Positioned(
                left: 27,
                top: 208,
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/energia.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 366,
                top: 82,
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Imprima',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 261,
                top: 68,
                child: Container(
                  width: 67,
                  height: 63,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/moeda.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 277,
                top: 121,
                child: Text(
                  '200',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Indie Flower',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 650,
                child: Container(
                  width: 110,
                  height: 111,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/jogar.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 290,
                top: 635,
                child: Container(
                  width: 99,
                  height: 104,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/loja.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 7,
                top: 635,
                child: Container(
                  width: 106,
                  height: 93,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tarefas.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 208,
                child: Container(
                  width: 348,
                  height: 448,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bixinho.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
