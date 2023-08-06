import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/application/auth_service.dart';

/// ログアウト処理状態
final loggingOutStateProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncData(null),
);

final userServiceProvider = Provider((ref) {
  return UserService(ref);
});

/// ユーザーサービス
class UserService {
  UserService(this.ref);

  final Ref ref;

  /// ログアウト
  Future<void> logout() async {
    ref.read(loggingOutStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        // TODO: Firebase等のサインアウトに繋げる
        await Future<void>.delayed(const Duration(seconds: 1));
        // ログイン状態更新
        ref.read(loginStateProvider.notifier).state = false;
      });
  }
}
