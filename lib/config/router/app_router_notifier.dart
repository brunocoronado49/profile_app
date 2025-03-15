// import 'package:flutter/foundation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final getRouterNotifierProvider = Provider((ref) {
//   final authNotifier = ref.read(authProvider.notifier);
//   return GoRouterNotifier(authNotifier);
// });

// class GoRouterNotifier extends ChangeNotifier {
//   AuthStatus _authStatus = AuthStatus.checking;

//   GoRouterNotifier(this._authStatus) {
//     _authStatus.addListener((state) {
//       authStatus = state.authStatus;
//     });
//   }

//   AuthStatus get authStatus => _authStatus;

//   set authStatus(Authstatus value) {
//     _authStatus = value;
//     notifyListeners();
//   }
// }
