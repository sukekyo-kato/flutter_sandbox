import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ログイン処理状態
final loggingStateProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncData(null),
);

final authServiceProvider = Provider((ref) {
  return AuthService(ref);
});

/// 認証サービス
class AuthService {
  AuthService(this.ref);

  final Ref ref;

  /// Firebaseの匿名ログイン
  Future<void> signInAnnoynously() async {
    // lint対応 だけど、読みやすいか？これ。
    ref.read(loggingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        // TODO: Firebase等のログインに繋げる
        await Future<void>.delayed(const Duration(seconds: 3));
      });
  }
}
