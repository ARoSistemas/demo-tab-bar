import 'package:demo_tabs/producat.dart';
import 'package:flutter/material.dart';

import 'segunda_lista.dart';

class PrimeraLista extends StatefulWidget {
  static String idPage = 'PrimeraLista';
  const PrimeraLista({Key? key}) : super(key: key);

  @override
  State<PrimeraLista> createState() => _PrimeraListaState();
}

class _PrimeraListaState extends State<PrimeraLista> {
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
        subItems: ['Vino', 'Cerveza', 'Aguardiente', 'Ron', 'Wisky', 'Vodka'],
        iconImageItemPrincipal: Icons.accessibility_new,
        iconImagesubItem: [
          Icons.accessibility_new,
          Icons.accessibility_new,
          Icons.accessibility_new,
          Icons.accessibility_new,
          Icons.accessibility_new,
          Icons.accessibility_new,
        ],
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 2,
        idsub: 1,
        name: "Bebidas",
        icon: "assets/icons/shirt.svg",
        imgtab: "assets/images/medium_1.png",
        subItems: [
          'Agua',
          'Gaseosa',
          'Jugos',
          'Energizantes',
          'Saborizada',
          'Hidratantes'
        ],
        iconImageItemPrincipal: Icons.account_tree_sharp,
        iconImagesubItem: [
          Icons.account_tree_sharp,
          Icons.account_tree_sharp,
          Icons.account_tree_sharp,
          Icons.account_tree_sharp,
          Icons.account_tree_sharp,
          Icons.account_tree_sharp,
        ],
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 3,
        idsub: 1,
        name: "Lacteos",
        icon: "assets/icons/pants.svg",
        imgtab: "assets/images/medium_2.png",
        subItems: [
          'Leche',
          'Queso',
          'Yogurt',
          'Kumis',
          'Huevos',
          'Mantequilla'
        ],
        iconImageItemPrincipal: Icons.add_chart_outlined,
        iconImagesubItem: [
          Icons.add_chart_outlined,
          Icons.add_chart_outlined,
          Icons.add_chart_outlined,
          Icons.add_chart_outlined,
          Icons.add_chart_outlined,
          Icons.add_chart_outlined,
        ],
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Frutas",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconImageItemPrincipal: Icons.access_alarm_sharp,
        iconImagesubItem: [
          Icons.access_alarm_sharp,
          Icons.access_alarm_sharp,
          Icons.access_alarm_sharp,
          Icons.access_alarm_sharp,
          Icons.access_alarm_sharp,
          Icons.access_alarm_sharp,
        ],
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Verduras",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconImageItemPrincipal: Icons.ac_unit_outlined,
        iconImagesubItem: [
          Icons.ac_unit_outlined,
          Icons.ac_unit_outlined,
          Icons.ac_unit_outlined,
          Icons.ac_unit_outlined,
          Icons.ac_unit_outlined,
          Icons.ac_unit_outlined,
        ],
      ),
    );

    categorythree.add(
      CategoryTwo(
        idc: 4,
        idsub: 1,
        name: "Vinos",
        icon: "assets/icons/Tshirt.svg",
        imgtab: "assets/images/medium_3.png",
        subItems: ['Manzana', 'Banano', 'Pera', 'Maracuya', 'Guayaba', 'Mango'],
        iconImageItemPrincipal: Icons.add_ic_call_rounded,
        iconImagesubItem: [
          Icons.add_ic_call_rounded,
          Icons.add_ic_call_rounded,
          Icons.add_ic_call_rounded,
          Icons.add_ic_call_rounded,
          Icons.add_ic_call_rounded,
          Icons.add_ic_call_rounded,
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myItems = List.generate(categorythree.length, (i) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return SegundaLista(
                  subItems: categorythree[i],
                );
              },
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 80,
              width: 80,
              child: Icon(categorythree[i].iconImageItemPrincipal),
            ),
            const SizedBox(height: 10),
            Text(categorythree[i].name),
          ],
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Lista: Categorias'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SizedBox(
          height: 250,
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                'Lista principal: Categorias',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...myItems,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
