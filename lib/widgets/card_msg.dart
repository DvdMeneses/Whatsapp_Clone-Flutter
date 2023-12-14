import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';

class CardPrincipal extends StatelessWidget {
  final Contato contato;

  const CardPrincipal({
    required this.contato,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 18, 27, 34),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment
            .center, // Alinha os elementos igualmente na linha
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(contato.imagem),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  contato.nome,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  contato.ultimaMsg,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                contato.horaUltimaMsg,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
