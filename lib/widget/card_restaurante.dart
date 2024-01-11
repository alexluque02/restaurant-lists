import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardRestaurante extends StatelessWidget {
  final String nombre;
  final String urlImagen;
  final double valoracion;
  final String direccion;
  final double precio;
  const CardRestaurante(
      {super.key,
      required this.nombre,
      required this.direccion,
      required this.precio,
      required this.urlImagen,
      required this.valoracion});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image(
                  image: NetworkImage(urlImagen),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          nombre,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: RatingBar.builder(
                          wrapAlignment: WrapAlignment.end,
                          maxRating: 5,
                          initialRating: valoracion,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 20,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 10,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.euro,
                            size: 15,
                          ),
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  text: ' Precio medio: ',
                                  style: const TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: precio.toStringAsFixed(2),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    const TextSpan(text: ' €'),
                                  ])),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.home,
                              size: 15,
                            ),
                            RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                    text: ' Dirección: ',
                                    style: const TextStyle(color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: direccion,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
