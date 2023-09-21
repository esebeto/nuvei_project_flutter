import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final int? elevation;
  final Color? color;

  const CustomAppBar({
    super.key,
    required this.title,
    this.elevation,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          if (kDebugMode) {
            print('Menú presionado');
          }
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            if (kDebugMode) {
              print('Búsqueda presionada');
            }
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            if (kDebugMode) {
              print('Opciones presionadas');
            }
          },
        ),
      ],
    );
  }
}
