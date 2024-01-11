import 'package:flutter/material.dart';
import 'package:listado_restaurantes/widget/card_restaurante.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CardRestaurante(
              nombre: 'McDonalds',
              direccion: 'C/Siroco, 11',
              precio: 3.40,
              urlImagen:
                  'https://brandemia.org/contenido/subidas/2022/10/marca-mcdonalds-logo.png',
              valoracion: 4.5),
          CardRestaurante(
              nombre: 'Burger King',
              direccion: 'C/Siroco, 11',
              precio: 3.40,
              urlImagen:
                  'https://brandemia.org/contenido/subidas/2021/12/bk_rebrand_stills_vi_1_logo.jpg',
              valoracion: 4.5),
          CardRestaurante(
              nombre: 'KFC',
              direccion: 'C/Siroco, 11',
              precio: 3.40,
              urlImagen:
                  'https://thefoodtech.com/wp-content/uploads/2023/07/kfc.jpg',
              valoracion: 4.5),
          CardRestaurante(
              nombre: 'Sloppy Joe`s',
              direccion: 'C/Siroco, 11',
              precio: 3.40,
              urlImagen:
                  'https://www.southernliving.com/thmb/NP6DbzVLRfvENGnLnALfhet9Ejg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Sloppy-Joes_Beauty-01_SEO51-49632957ffd04971a79af5a3f6be020f.jpg',
              valoracion: 4.5),
        ],
      ),
    );
  }
}
