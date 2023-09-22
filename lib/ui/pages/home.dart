import 'package:flutter/material.dart';
import 'package:nuvei_project_flutter/ui/pages/saldo.dart';
import 'package:nuvei_project_flutter/ui/widgets/basic_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nuvei_project_flutter/ui/widgets/casino_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ImageItem> imageList = [
    ImageItem(1, 'casino1'),
    ImageItem(2, 'casino2'),
    ImageItem(3, 'casino3'),
    ImageItem(4, 'casino4'),
    ImageItem(5, 'casino5'),
    ImageItem(6, 'casino6'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(38, 15, 46, 1),
        appBar: AppBar(
          title: const Text("INICIO"),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: imageList.map(
                  (imageItem) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SaldoPage(),
                              ),
                            );
                          },
                          child: CasinoCard(image: imageItem.imageUrl),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      text: "Entrar Casino",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SaldoPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomElevatedButton(
                      text: "Cerrar Sesion",
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            )
          ],
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
