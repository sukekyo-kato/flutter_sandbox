import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../application/user_service.dart';

export 'part/user_tab_a.dart';
export 'part/user_tab_b.dart';
export 'part/user_tab_c.dart';

/// ユーザページ
class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
        actions: _appBarActions(),
      ),
      body: navigationShell,
      // ボトムバー
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'a',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'b',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'c',
          ),
        ],
      ),
    );
  }

  List<Widget> _appBarActions() {
    return [
      // ログアウト
      _logout()
    ];
  }

  /// ログアウト
  Widget _logout() {
    return Consumer(
      builder: (context, ref, parent) {
        final state = ref.watch(loggingOutStateProvider);

        return IconButton(
          disabledColor: Colors.grey,
          onPressed:
              // 連打防止
              state.isLoading
                  ? null
                  : () => ref.read(userServiceProvider).logout(),
          icon: const Icon(Icons.logout),
        );
      },
    );
  }
}
