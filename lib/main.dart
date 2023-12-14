import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/pages/home_page.dart';
import 'package:whatsapp_clone/widgets/card_msg.dart';
import 'package:whatsapp_clone/widgets/tab_um.dart';
import 'package:whatsapp_clone/widgets/tab_dois.dart';
import 'package:whatsapp_clone/widgets/tab_tres.dart';
import 'package:whatsapp_clone/widgets/tab_quatro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Contato> contatos = [
    Contato(
      nome: 'CONTATO 1 ',
      telefone: '123456789',
      imagem: 'https://avatars.githubusercontent.com/u/2386445?v=4',
      ultimaMsg: 'to cuidando do arthurzinho depois respondo',
      horaUltimaMsg: '10:00',
    ),
    Contato(
      nome: 'CONTATO 2 ',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/128005290?v=4',
      ultimaMsg: 'E aí, como está?',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 3',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/112129145?s=100&v=4',
      ultimaMsg: 'paga ai man',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 4',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/112668808?s=100&v=4',
      ultimaMsg: 'Mals o sumiço mas já mudei lá hj de tarde testestestestestes',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 5',
      telefone: '987654321',
      imagem: 'https://www.instagram.com/p/CADwImTD4wj/',
      ultimaMsg: 'lolnunk?',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 6',
      telefone: '123456789',
      imagem: 'https://avatars.githubusercontent.com/u/2386445?v=4',
      ultimaMsg: 'to cuidando do arthurzinho depois respondo',
      horaUltimaMsg: '10:00',
    ),
    Contato(
      nome: 'CONTATO 7',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/128005290?v=4',
      ultimaMsg: 'E aí, como está?',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 8  ',
      telefone: '',
      imagem: 'https://avatars.githubusercontent.com/u/112129145?s=100&v=4',
      ultimaMsg: 'paga ai man',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 9 ',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/112668808?s=100&v=4',
      ultimaMsg: 'Mals o sumiço mas já mudei lá hj de tarde testestestestestes',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 10',
      telefone: '987654321',
      imagem: 'https://www.instagram.com/p/CADwImTD4wj/',
      ultimaMsg: 'lolnunk?',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 11 ',
      telefone: '123456789',
      imagem: 'https://avatars.githubusercontent.com/u/2386445?v=4',
      ultimaMsg: 'to cuidando do arthurzinho depois respondo',
      horaUltimaMsg: '10:00',
    ),
    Contato(
      nome: 'CONTATO 12',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/128005290?v=4',
      ultimaMsg: 'E aí, como está?',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 13',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/112129145?s=100&v=4',
      ultimaMsg: 'paga ai man',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 14',
      telefone: '987654321',
      imagem: 'https://avatars.githubusercontent.com/u/112668808?s=100&v=4',
      ultimaMsg: 'Mals o sumiço mas já mudei lá hj de tarde testestestestestes',
      horaUltimaMsg: '11:30',
    ),
    Contato(
      nome: 'CONTATO 15',
      telefone: '987654321',
      imagem: 'https://www.instagram.com/p/CADwImTD4wj/',
      ultimaMsg: 'lolnunk?',
      horaUltimaMsg: '11:30',
    ),

    // Adicione mais contatos conforme necessário
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WppClone',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 27, 34),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 31, 44, 52),
          title: const Text("WhatsApp"),
          actions: [
            // ICONES DO WPP
            IconButton(
              icon: const Icon(Icons.camera_alt_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            // TABBAR
            isScrollable: true,
            controller: _tabController,
            indicatorColor: const Color.fromARGB(255, 0, 168, 132),
            labelPadding: EdgeInsets.symmetric(horizontal: 25.0),
            tabs: const <Widget>[
              TabUm(),
              TabDois(),
              TabTres(),
              TabQuatro(),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Icon(Icons.groups), // icone no meio da tela do  primeiro tab

            ListView.builder(
              // segundo tab lista de contatos
              // LISTAGEM DOS CONTATOS
              itemCount: contatos.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 18, 27, 34),
                  margin: EdgeInsets.only(top: 2.0),
                  elevation: 0,
                  child: ListTile(
                      title: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0,
                        horizontal: 0.0), // Espaçamento horizontal
                    child: CardPrincipal(contato: contatos[index]),
                  ) // Use dentro de 'title'
                      ),
                );
              },
            ),
            Center(
              // terceiro tab
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_circle_outline),
                  TextButton(
                      onPressed: () => _tabController.animateTo(1),
                      child: const Text("Ir para aba contatos"))
                ],
              ),
            ),
            Center(
                // quarto tab...
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add_circle_outline),
                TextButton(
                    onPressed: () => _tabController.animateTo(1),
                    child: const Text("Ir para aba contatos"))
              ],
            )),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 60.0,
          height: 60.0,
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(
                255, 0, 168, 132), // Altere para a cor desejada
            onPressed: () {},
            tooltip: 'Adicionar USER',
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            foregroundColor:
                Colors.black, // Definindo a cor do ícone como preto
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationX(pi) *
                  Matrix4.rotationY(pi), // Gira o ícone horizontalmente
              child: const Icon(
                Icons.message,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Contato {
  final String nome;
  final String telefone;
  final String imagem;
  final String ultimaMsg;
  final String horaUltimaMsg;

  Contato({
    required this.nome,
    required this.telefone,
    required this.imagem,
    required this.ultimaMsg,
    required this.horaUltimaMsg,
  });
}
