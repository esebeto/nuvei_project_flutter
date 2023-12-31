import 'package:flutter/material.dart';
import 'package:nuvei_project_flutter/ui/widgets/basic_button.dart';
import 'package:nuvei_project_flutter/ui/widgets/credit_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RecargaPage extends StatefulWidget {
  const RecargaPage({super.key});

  @override
  State<RecargaPage> createState() => _RecargaPageState();
}

class _RecargaPageState extends State<RecargaPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<int> precios = [10, 20, 50, 100, 200, 500];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 15, 46, 1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              child: Text(
                "Recarga en Casino Angelopolis",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ingrese su texto',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: precios.map(
                  (precio) {
                    return ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        minimumSize: Size(
                          (MediaQuery.of(context).size.width - 48) / 2,
                          60,
                        ), // Dividir el ancho en 2
                      ),
                      child: Text(
                        '$precio', // Mostrar el precio en el botón
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            //Card
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  CreditCard(
                    balance: 500.50,
                    cardNumber: 839493,
                    expiryMonth: 12,
                    expiryYear: 27,
                    color: Colors.green,
                  ),
                  CreditCard(
                    balance: 500.50,
                    cardNumber: 839493,
                    expiryMonth: 12,
                    expiryYear: 27,
                    color: Colors.amber,
                  ),
                  CreditCard(
                    balance: 500.50,
                    cardNumber: 839493,
                    expiryMonth: 12,
                    expiryYear: 27,
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.amberAccent,
              ),
            ),
            //Boton de pago
            CustomElevatedButton(
              text: "Seleccione Metodo de Pago",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
