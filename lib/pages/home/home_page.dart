import 'package:flutter/material.dart';
import 'package:flutter_test1/components/app_bar_component.dart';
import 'package:flutter_test1/pages/home/abas/afazeres_tab.dart';
import 'package:flutter_test1/pages/home/abas/perfil_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int abaSelecionada;

  final List<BottomNavigationBarItem> _abas = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: 'Perfil')
  ];

  final List<Widget> _conteudos = [
    const AfazeresTab(),
    const PerfilTab(),
  ];

  void handleTab(int tabIdx) {
    setState(() {
      abaSelecionada = tabIdx;
    });
  }

  @override
  void initState() {
    abaSelecionada = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(titulo: 'MJV School 2'),
      body: _conteudos.elementAt(abaSelecionada),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleTab,
        currentIndex: abaSelecionada,
        items: _abas,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          handleTab(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
