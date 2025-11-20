import 'package:flutter/material.dart';

void main() => runApp(const ScoreTrackerApp());

class ScoreTrackerApp extends StatelessWidget {
  const ScoreTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const ScoreDashboard(),
    );
  }
}

class ScoreDashboard extends StatelessWidget {
  const ScoreDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB8E986),
      appBar: AppBar(
        backgroundColor: const Color(0xFF88C057),
        title: const Text('Score tracker demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ScoreCard(title: 'My score in Flutter', initialScore: 6),
            SizedBox(height: 20),
            ScoreCard(title: 'My score in Dart', initialScore: 4),
            SizedBox(height: 20),
            ScoreCard(title: 'My score in React', initialScore: 10),
          ],
        ),
      ),
    );
  }
}

class ScoreCard extends StatefulWidget {
  const ScoreCard({super.key, required this.title, required this.initialScore});

  final String title;
  final int initialScore;

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  static const int _maxScore = 10;
  late int _score;

  @override
  void initState() {
    super.initState();
    _score = widget.initialScore.clamp(0, _maxScore);
  }

  void _increment() {
    if (_score >= _maxScore) return;
    setState(() {
      _score += 1;
    });
  }

  void _decrement() {
    if (_score <= 0) return;
    setState(() {
      _score -= 1;
    });
  }

  Color get _progressColor {
    if (_score <= 3) {
      return const Color(0xFF81C784); // Light green for low scores (1-3)
    } else if (_score <= 7) {
      return const Color(0xFF66BB6A); // Medium green for medium scores (4-7)
    } else {
      return const Color(0xFF2E7D32); // Dark green for high scores (8-10)
    }
  }

  @override
  Widget build(BuildContext context) {
    final double widthFactor = _score / _maxScore;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF7A7A7A),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: _decrement,
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 24, color: Color(0xFF7A7A7A)),
                  ),
                ),
                TextButton(
                  onPressed: _increment,
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 24, color: Color(0xFF7A7A7A)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 26,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFFB2B2B2),
                        width: 2,
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: widthFactor.clamp(0, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _progressColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
