import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widget/overlay_loading.dart';
import '../application/auth_service.dart';

/// 初期ページ
class EntryPage extends ConsumerWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggingState = ref.watch(loggingStateProvider);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                      ..._buttons(ref),
                      const SizedBox(height: 10),
                      _terms(),
                      const SizedBox(height: 10),
                      _copyrights()
                    ],
                  ),
                ),
              ],
            ),
            _loading(loggingState.isLoading),
          ],
        ),
      ),
    );
  }

  /// 読み込み中
  Widget _loading(bool isLoading) {
    return isLoading
        ? const OverlayCircularProgress()
        : const SizedBox.shrink();
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
  List<Widget> _buttons(WidgetRef ref) {
    return [
      SizedBox(
        width: 200,
        child: ElevatedButton(
          onPressed: () => ref.read(authServiceProvider).signInAnnoynously(),
          child: const Text('新規登録'),
        ),
      ),
      SizedBox(
        width: 200,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          // TODO: 擬似なので同じ処理にしておく。
          onPressed: () => ref.read(authServiceProvider).signInAnnoynously(),
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
