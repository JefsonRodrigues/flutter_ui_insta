import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final int likes;
  final String caption;
  const PostCard({
    super.key,
    required this.likes,
    required this.userName,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(userName),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Image.network(
          'https://i.pinimg.com/736x/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,

                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,

                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,

                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline_outlined,

                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '$likes curtidas',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    ' $userName  $caption',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
