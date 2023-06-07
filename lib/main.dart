import 'package:flutter/material.dart';

import 'producat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Tab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Tab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController controller;

  final List<CategoryTwo> categorythree = [];

  @override
  void initState() {
    super.initState();

    categorythree.add(
      CategoryTwo(
        idc: 1,
        idsub: 1,
        name: "Licores",
        icon: "assets/icons/licor.svg",
        imgtab: "assets/images/images-licores.png",
        itemsss: ['Vino', 'Cerveza', 'Aguardiente', 'Ron', 'Wisky', 'Vodka'],
        iconandy: Icons.accessibility_new,
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 2,
        idsub: 1,
        name: "Bebidas",
        icon: "assets/icons/shirt.svg",
        imgtab: "assets/images/medium_1.png",
        itemsss: [
          'Agua',
          'Gaseosa',
          'Jugos',
          'Energizantes',
          'Saborizada',
          'Hidratantes'
        ],
        iconandy: Icons.account_tree_sharp,
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 3,
        idsub: 1,
        name: "Lacteos",
        icon: "assets/icons/pants.svg",
        imgtab: "assets/images/medium_2.png",
        itemsss: ['Leche', 'Queso', 'Yogurt', 'Kumis', 'Huevos', 'Mantequilla'],
        iconandy: Icons.add_chart_outlined,
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Frutas",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        itemsss: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconandy: Icons.access_alarm_sharp,
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Verduras",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        itemsss: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconandy: Icons.ac_unit_outlined,
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Vinos",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        itemsss: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconandy: Icons.add_ic_call_rounded,
      ),
    );

    controller = TabController(length: categorythree.length, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myTabBar = List.generate(categorythree.length, (i) {
      return Tab(
        icon: Icon(categorythree[i].iconandy),
        text: categorythree[i].name,
      );
    });

    final myTabBarIcons = List.generate(categorythree.length, (i) {
      return Icon(categorythree[i].iconandy);
    });

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            controller: controller,
            tabs: [
              ...myTabBar,
            ],
          ),
          title: const Text('Tabs Demo - ARoSistemas.com'),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ...myTabBarIcons,
          ],
        ),
      ),
    );
  }
}
