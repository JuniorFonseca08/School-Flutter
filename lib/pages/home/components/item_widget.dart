import 'package:flutter/material.dart';
import 'package:flutter_test1/components/icon_button_component.dart';
import 'package:flutter_test1/components/spacer_component.dart';
import 'package:flutter_test1/entities/afazer_entity.dart';

class ItemWidget extends StatelessWidget {
  final AfazerEntity item;
  final Function() onPressed;

  const ItemWidget({
    super.key,
    required this.item,
    required this.onPressed,
  });

  Widget status() {
    final icon = item.isConcluido == true ? Icons.done_all : Icons.done;
    final color = item.isConcluido == true ? Colors.green : Colors.grey[400];
    return Icon(
      icon,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              status(),
              const SpacerComponent(isHorizontal: true),
              Text(item.titulo,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const SpacerComponent(isFull: true),
              IconButtonComponent(
                  onPressed: onPressed, icon: Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}

// COMO EU TINHA FEITO:
 //Card(
 //    child: Row(children: [
 //const SpacerComponent(size: 50),
 //const SpacerComponent(isHorizontal: true),
 //item.isConcluido != null && item.isConcluido!
 //    ? const Icon(Icons.done_all, color: Colors.green)
 //    : const Icon(Icons.done, color: Colors.grey),
 //const SpacerComponent(isHorizontal: true),
 //const SizedBox(height: 20),
 //Text(item.titulo,
 //    style: const TextStyle(fontWeight: FontWeight.bold)),
 //const SpacerComponent(isFull: true),
 //const IconButtonComponent(
 //          onPressed: () {}, icon: Icons.arrow_forward_ios),
 //const SpacerComponent(isHorizontal: true),
 //)