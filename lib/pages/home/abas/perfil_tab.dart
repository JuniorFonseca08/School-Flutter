import 'package:flutter/material.dart';
import 'package:flutter_test1/providers/afazer_provider.dart';
import 'package:flutter_test1/providers/config_provider.dart';
import 'package:provider/provider.dart';

import '../../../components/icon_button_component.dart';
import '../../../components/spacer_component.dart';

class PerfilTab extends StatefulWidget {
  const PerfilTab({super.key});

  @override
  State<PerfilTab> createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  late AfazerProvider store;
  late ConfigProvider storeConfig;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);
    storeConfig = Provider.of<ConfigProvider>(context);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Card(
          margin: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(children: [
              const CircleAvatar(child: Text('J')),
              const SpacerComponent(size: 8, isHorizontal: true),
              const Text('Junior Fonseca',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SpacerComponent(isFull: true),
              IconButtonComponent(
                icon: Icons.more_vert,
                onPressed: () {},
              )
            ]),
          ),
        ),
        const SpacerComponent(),
        const Text(
          'Minhas estatísticas',
          style: TextStyle(fontSize: 18),
        ),
        const SpacerComponent(),
        Row(children: [
          const Icon(Icons.list),
          const SizedBox(width: 8),
          const Text('Total de notas: '),
          Text(store.listaAfazeres.length.toString()),
        ]),
        const SpacerComponent(),
        Row(children: [
          const Icon(Icons.list),
          const SizedBox(width: 8),
          const Text('Concluídas: '),
          Text(store.listaAfazeres
              .where((element) => element.isConcluido == true)
              .length
              .toString()),
        ]),
        const SpacerComponent(),
        const SpacerComponent(
          isHorizontal: true,
          isFull: true,
        ),
        const SpacerComponent(),
        const Text(
          'Minhas estatísticas',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 16),
        Row(children: [
          const Text('Tema escuro'),
          const SpacerComponent(isFull: true),
          Switch(
            value: storeConfig.tema == ThemeMode.dark,
            onChanged: (val) {
              storeConfig.tema = val ? ThemeMode.dark : ThemeMode.light;
            },
          ),
        ])
      ]),
    );
  }
}
