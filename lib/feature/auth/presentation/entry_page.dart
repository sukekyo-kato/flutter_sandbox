import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// 初期ページ
class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _titiles(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  ..._buttons(),
                  const SizedBox(height: 10),
                  _terms(),
                  const SizedBox(height: 10),
                  _copyrights()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// タイトル部
  List<Widget> _titiles() {
    return [
      // title
      const Text(
        'Flutter Sandbox',
        style: TextStyle(fontSize: 32),
      ),
      const SizedBox(height: 10),
      // sub tite
      const Text(
        'Flutterの実験場',
      ),
    ];
  }

  /// ボタン類
  List<Widget> _buttons() {
    return [
      SizedBox(
        width: 200,
        child: ElevatedButton(
          onPressed: () => {},
          child: const Text('新規登録'),
        ),
      ),
      SizedBox(
        width: 200,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          onPressed: () => {},
          child: const Text('ログイン'),
        ),
      ),
    ];
  }

  /// 利用規約
  Widget _terms() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: 'プライバシーポリシーとか。'),
            TextSpan(
              text: '利用規約とか。',
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () async {},
            ),
            const TextSpan(text: 'を書く。'),
          ],
        ),
      ),
    );
  }

  /// コピーライト
  Widget _copyrights() {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Text('©︎ copyrights'),
    );
  }
}
