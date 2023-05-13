import 'package:flutter/material.dart';

/// 読み込み中プログレス表示
class OverlayCircularProgress extends StatelessWidget {
  const OverlayCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.8)),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: const AspectRatio(
        aspectRatio: 1,
        child: SizedBox.expand(
          child: CircularProgressIndicator(color: Colors.blue),
        ),
      ),
    );
  }
}
