import 'package:flutter/material.dart';
import 'package:nuvei_project_flutter/ui/pages/saldo.dart';
import 'package:nuvei_project_flutter/ui/widgets/basic_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ImageItem> imageList = [
    ImageItem(1,
        'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/60294816e5abae001c5260be.jpg'),
    ImageItem(2,
        'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/60294816e5abae001c5260be.jpg'),
    ImageItem(3,
        'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/60294816e5abae001c5260be.jpg'),
    // Agrega más elementos de imagen según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 15, 46, 1),
      appBar: AppBar(
        title: const Text("INICIO"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Slider
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: imageList.map((imageItem) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            imageItem.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      text: "Entrar Casino",
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SaldoPage()));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Boton Cerrar Sesion
                    CustomElevatedButton(
                      text: "Cerrar Sesion",
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              )
              // Boton Entrar
            ],
          ),
        ),
      ),
    );
  }
}

class ImageItem {
  final int id;
  final String imageUrl;

  ImageItem(this.id, this.imageUrl);
}
