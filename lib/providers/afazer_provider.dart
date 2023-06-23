import 'package:flutter/material.dart';
import 'package:flutter_test1/entities/afazer_entity.dart';
import 'package:flutter_test1/services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    notifyListeners();
  }
}
