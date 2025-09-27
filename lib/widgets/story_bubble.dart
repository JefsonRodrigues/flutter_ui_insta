import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  final bool isAovivo;
  final String url;
  final String nome;
  const StoryBubble({
    super.key,
    required this.isAovivo,
    required this.url,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.amber,
                      Colors.green,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      url,
                    ),
                  ),
                ),
              ),
              if (isAovivo)
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Text(
                        'AO VIVO',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            nome,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
