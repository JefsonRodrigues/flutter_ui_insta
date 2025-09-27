import 'package:flutter/material.dart';
import 'package:ui_insta/widgets/post_card.dart';
import 'package:ui_insta/widgets/story_bubble.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: const Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                    nome: 'Seu story',
                  ),
                  StoryBubble(
                    isAovivo: true,
                    url:
                        'https://i.pinimg.com/736x/77/9c/62/779c62d21c5a6c9f665fa79b3f7f6cd5.jpg',
                    nome: 'juliaana',
                  ),
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/86/64/19/8664199181b794b9a8e0c578c5f072dc.jpg',
                    nome: 'gaby1',
                  ),
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                    nome: 'bagy2',
                  ),
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                    nome: 'luiza22',
                  ),
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                    nome: 'luisa22',
                  ),
                  StoryBubble(
                    isAovivo: false,
                    url:
                        'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                    nome: 'atlas2',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            PostCard(
              likes: 67,
              userName: 'beatriz.22',
              caption: 'Primeiro post do dia 🙌',
            ),
            PostCard(
              likes: 12,
              userName: 'beatriz.222',
              caption: 'Primeiro post do dia 🙌',
            ),
          ],
        ),
      ),
    );
  }
}
