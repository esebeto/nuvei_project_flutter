import 'package:flutter/material.dart';
import 'package:nuvei_project_flutter/ui/pages/recarga.dart';
import 'package:nuvei_project_flutter/ui/widgets/basic_button.dart';

class SaldoPage extends StatelessWidget {
  const SaldoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(38, 15, 46, 1),
        appBar: AppBar(
          title: const Text("casino"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              child: Text(
                "Casino Angelopolis",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Text(
              "Mi Saldo",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                //width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(50),
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
            ),
            const Text(
              "Saldo Redimible",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "Saldo No Redimible",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomElevatedButton(
                text: "Ver Deralle de Saldo",
                backgroundColor: Colors.blue,
                onPressed: () {},
              ),
            ),
            // Botones
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      text: "Recargar",
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RecargaPage()));
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Boton Cerrar Sesion
                    CustomElevatedButton(
                      text: "Cobrar",
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            )
            // Boton Entrar
          ],
        ),
      ),
    );
  }
}
