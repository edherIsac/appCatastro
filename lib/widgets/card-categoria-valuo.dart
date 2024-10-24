import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'custom_card_widget.dart'; // Importa tu CustomCard

class CardClasificacionContruccion extends StatelessWidget {
  final String title; // Título dinámico
  final List<ImageProvider> imageList; // Lista dinámica de imágenes
  final VoidCallback onTap; // Función de callback para el evento de click

  const CardClasificacionContruccion({
    Key? key,
    required this.title,
    required this.imageList,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Evento de click en todo el card
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title, // Mostrar el título pasado por parámetro
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 16 / 12,
              child: AnotherCarousel(
                showIndicator: true,
                autoplay: false,
                images: imageList, // Usar la lista dinámica de imágenes
              ),
            ),
          ],
        ),
      ),
    );
  }
}
