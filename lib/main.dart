// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, import_of_legacy_library_into_null_safe, sized_box_for_whitespace
// Para poder ejecutar el programa hay que ejecutarlo desde la terminal con el comando "flutter run --no sound-null-safety"
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //El siguiente color hará que el fondo sea transparente
        backgroundColor: Color(0x44000000),
        elevation: 0,
        title: Container(
          height: 50,
          //Logo de Audi en el AppBar
          child: Image.network("https://logos-marcas.com/wp-content/uploads/2021/03/Audi-Logo.png"),
        )
      ),
      // Creamos un ListView para que el usuario pueda moverse libremente por la pantalla y ver todo su contenido
      body: ListView(
        padding: EdgeInsets.only(top: 37),
        children: [
          espacio(40),
          Container(
            //Creamos el carousel de fotos que aparece en el principio
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true
              ),
              //Mostramos las imagenes llamando al metodo imageList que hemos declarado abajo del todo
              items: imageList.map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(e)
                  ],
                ),
              )).toList(),
            )
          ),
          espacio(20),
          //Creamos el apartado de caracteristicas del primer modelo "Audi e-Tron GT"
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/rs-e-tron.jpg"),
                fit: BoxFit.cover,
              ),
            ),  
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Audi e-Tron GT", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Audi-Type') ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x44000000),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    //Para que el container de la descripcion ocupe una parte de la pantalla del telefono
                    // le decimos que ocupe todo el ancho del dispositivo y le restamos los pixeles que sobresalen.
                    width: MediaQuery.of(context).size.width-247,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      "El Audi e-tron GT es una berlina eléctrica y con diseño 'coupé', fabricada por Audi. Actualmente se comercializa la primera generación, presentada en 2021. El Audi e-tron GT se caracteriza por ofrecer una dinámica muy deportiva, consiguiendo una potencia de hasta 646 CV y 488 km de autonomía", 
                      style: TextStyle(fontSize: 15, color: Colors.white) ),
                  ),
                ),
              ],
            ),
          ),
          espacio(40),
          //A continuacion creamos el del siguiente modelo "Audi RS6"
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/rs6.jpg"),
                fit: BoxFit.cover,
              ),
            ),  
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Audi RS6", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Audi-Type') ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x44000000),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: MediaQuery.of(context).size.width-183,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      "Extremadamente deportivo. Ampliamente versátil. El icónico Audi RS 6 Avant cumple 25 años. Y lo celebra ofreciendo una nueva versión en la que combina potencia sorprendente con una elevada eficiencia gracias a la tecnología Mild hybrid. Ágil y dinámico en la carretera. ", 
                      style: TextStyle(fontSize: 15, color: Colors.white) ),
                  ),
                ),
              ],
            ),
          ),
          espacio(40),
          //Procedemos a crear el siguiente modelo "Audi RS7"
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/rs7.jpg"),
                fit: BoxFit.cover,
              ),
            ),  
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Audi RS7", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Audi-Type') ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x44000000),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: MediaQuery.of(context).size.width-183,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      "Más exclusivo que nunca, el Audi RS 7 Sportback ofrece deportividad y estilo únicos. Con una carrocería ensanchada, un mayor rendimiento y mayor eficiencia gracias a la tecnología Mild hybrid, sus prestaciones superan cualquier expectativa. Es el gran turismo deportivo.", 
                      style: TextStyle(fontSize: 15, color: Colors.white) ),
                  ),
                )
              ],
            ),
          ),
          espacio(40),
          //Y por ultimo el apartado de nuestro ultimo modelo "Audi RSQ8"
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/rsq8.jpg"),
                fit: BoxFit.cover,
              ),
            ),  
            child: Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Audi RSQ8", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Audi-Type') ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x44000000),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    width: MediaQuery.of(context).size.width-202,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      "Ponte a los mandos del SUV coupé más potente de Audi Sport y siente todo lo que no se puede explicar con palabras. Con 441 kW (600 CV) de potencia y un motor V8 TFSI de 4.0 litros, el poder más extremo del universo RS te esperan.", 
                      style: TextStyle(fontSize: 15, color: Colors.white) ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Metodo para crear espacios (sobre el eje Y)

  Widget espacio(double spacio){
    return Container(
      height: spacio,
    );
  }

  //Aqui se almacenarán de forma temporal las imagenes que se pretenden mostrar en el Carousel

  final List<String> imageList =[
    "https://forococheselectricos.com/wp-content/uploads/2021/02/audi-e-tron-gt-quattro-2.jpg",
    "https://neomotor.sport.es/media/2021/04/audi-rs6-avant-2020-1600-09.jpeg",
    "https://d1eip2zddc2vdv.cloudfront.net/dphotos/4735587-1574273388.jpeg",
    "https://d1eip2zddc2vdv.cloudfront.net/dphotos/4589371-1572540872.jpeg"
  ];
}