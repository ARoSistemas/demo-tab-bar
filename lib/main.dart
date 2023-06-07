import 'package:demo_tabs/lista_uno.dart';
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
      home: const PrimeraLista(),
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

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 1,
    //     idsub: 1,
    //     name: "Licores",
    //     icon: "assets/icons/licor.svg",
    //     imgtab: "assets/images/images-licores.png",
    //     subItems: ['Vino', 'Cerveza', 'Aguardiente', 'Ron', 'Wisky', 'Vodka'],
    //     iconImageItemPrincipal: Icons.accessibility_new,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 2,
    //     idsub: 1,
    //     name: "Bebidas",
    //     icon: "assets/icons/shirt.svg",
    //     imgtab: "assets/images/medium_1.png",
    //     subItems: [
    //       'Agua',
    //       'Gaseosa',
    //       'Jugos',
    //       'Energizantes',
    //       'Saborizada',
    //       'Hidratantes'
    //     ],
    //     iconImageItemPrincipal: Icons.account_tree_sharp,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 3,
    //     idsub: 1,
    //     name: "Lacteos",
    //     icon: "assets/icons/pants.svg",
    //     imgtab: "assets/images/medium_2.png",
    //     subItems: [
    //       'Leche',
    //       'Queso',
    //       'Yogurt',
    //       'Kumis',
    //       'Huevos',
    //       'Mantequilla'
    //     ],
    //     iconImageItemPrincipal: Icons.add_chart_outlined,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 4,
    //     idsub: 1,
    //     name: "Frutas",
    //     icon: "assets/icons/Tshirt.svg",
    //     imgtab: "assets/images/medium_3.png",
    //     subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
    //     iconImageItemPrincipal: Icons.access_alarm_sharp,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 4,
    //     idsub: 1,
    //     name: "Verduras",
    //     icon: "assets/icons/Tshirt.svg",
    //     imgtab: "assets/images/medium_3.png",
    //     subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
    //     iconImageItemPrincipal: Icons.ac_unit_outlined,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

    // categorythree.add(
    //   CategoryTwo(
    //     idc: 4,
    //     idsub: 1,
    //     name: "Vinos",
    //     icon: "assets/icons/Tshirt.svg",
    //     imgtab: "assets/images/medium_3.png",
    //     subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
    //     iconImageItemPrincipal: Icons.add_ic_call_rounded,
    //     iconImagesubItem: Icons.accessibility_new,
    //   ),
    // );

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
        icon: Icon(categorythree[i].iconImageItemPrincipal),
        text: categorythree[i].name,
      );
    });

    final myTabBarIcons = List.generate(categorythree.length, (i) {
      return Icon(categorythree[i].iconImageItemPrincipal);
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
