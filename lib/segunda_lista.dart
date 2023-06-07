import 'package:flutter/material.dart';

import 'producat.dart';

class SegundaLista extends StatefulWidget {
  static String idPage = 'SegundaLista';
  final CategoryTwo subItems;

  const SegundaLista({
    Key? key,
    required this.subItems,
  }) : super(key: key);

  @override
  State<SegundaLista> createState() => _SegundaListaState();
}

class _SegundaListaState extends State<SegundaLista>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    //
    final noItems = widget.subItems.subItems.length;

    controller = TabController(length: noItems, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productos = widget.subItems.subItems;
    final imagenProductos = widget.subItems.iconImagesubItem;

    final myTabBar = List.generate(productos.length, (i) {
      return Tab(
        icon: Icon(imagenProductos[i]),
        text: productos[i],
      );
    });

    final myTabBarIcons = List.generate(productos.length, (i) {
      return GestureDetector(
        onTap: () {
          //
          print('🌟 Lanza lo que necesites');
        },
        child: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 50,
          width: 100,
          child: Icon(widget.subItems.iconImagesubItem[i]),
        ),
      );
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
          title: Text('Categoria: ${widget.subItems.name}'),
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
