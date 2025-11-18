import 'package:flutter/material.dart';

void main() => runApp(const FavoriteCardsApp());

class FavoriteCardsApp extends StatelessWidget {
  const FavoriteCardsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Favorite cards'),
        ),
        body: const FavoriteCardsList(),
      ),
    );
  }
}

class FavoriteCardsList extends StatelessWidget {
  const FavoriteCardsList({super.key});

  static final List<_FavoriteCardData> _cards = [
    const _FavoriteCardData(
      title: 'Snowy Mountains',
      description: 'Dream destination with cold mornings and hot cocoa.',
    ),
    const _FavoriteCardData(
      title: 'Sunset Beach',
      description: 'Warm sand, calm waves, and a perfect evening breeze.',
    ),
    const _FavoriteCardData(
      title: 'City Lights',
      description: 'Endless food spots and late-night adventures downtown.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 12),
      itemCount: _cards.length,
      separatorBuilder: (_, __) => const SizedBox(height: 4),
      itemBuilder: (context, index) {
        final card = _cards[index];
        return FavoriteCard(title: card.title, description: card.description);
      },
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.place, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.description,
                  style: const TextStyle(fontSize: 15, color: Colors.black87),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _toggleFavorite,
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _FavoriteCardData {
  const _FavoriteCardData({required this.title, required this.description});

  final String title;
  final String description;
}
