import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
  runApp(const PikaChess());
}

class PikaChess extends StatelessWidget {
  const PikaChess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "⚡ PikaChess",
      theme: ThemeData.dark(),
      home: const ChessHome(),
    );
  }
}

class ChessHome extends StatefulWidget {
  const ChessHome({Key? key}) : super(key: key);

  @override
  State<ChessHome> createState() => _ChessHomeState();
}

class _ChessHomeState extends State<ChessHome> {
  final ChessBoardController controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("⚡ PikaChess"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Column(
        children: [
          Expanded(
            child: ChessBoard(
              controller: controller,
              boardColor: BoardColor.brown,
              boardOrientation: PlayerColor.white,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow.shade600,
            ),
            onPressed: () {
              controller.resetBoard();
            },
            child: const Text("Reset Board"),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
